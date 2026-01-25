import React, { useState } from 'react';
import { motion as m } from 'framer-motion';
import { useLang } from 'contexts/LangContext';
import { Caret, Plus } from '../components/Icons';
import { useData } from 'contexts/DataContext';
import Input from '../components/Input';
import Button from '../components/Button';
import { fetchNui } from 'utils/fetchNui';
export default function RedeemCode() {
    const { lang } = useLang();
    const { setPage } = useData();
    const [value, setValue] = useState('');
    return (
        <>
            <m.div
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 0.6 }}
                className="absolute left-0 top-0 w-full h-full bg-[#0000005E] backdrop-blur-[0.2rem]"
            />
            <m.div
                initial={{ opacity: 0, x: '-150%' }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: '-150%' }}
                transition={{ duration: 0.6 }}
                onClick={e => setPage('character')}
                className="absolute left-10 top-10 w-[2.875rem] h-[2.875rem] rounded-[.3125rem] bg-[#FFFFFF0F] flex items-center justify-center select-none cursor-pointer hover:bg-white/[.37] group transition-colors mb-6"
            >
                <Caret className="stroke-white/[.31] group-hover:stroke-white transition-colors" />
            </m.div>
            <m.div
                initial={{ opacity: 0, right: '-20%' }}
                animate={{ opacity: 1, right: '10%' }}
                exit={{ opacity: 0, right: '-20%' }}
                transition={{ duration: 0.6 }}
                className="absolute top-1/2 -translate-y-1/2 z-10"
            >
                <p className="font-pp text-white/[.25] leading-[0]">
                    {lang.characterCreator}
                </p>
                <p
                    style={{
                        textShadow: '0px 0px 50.7px rgba(255, 255, 255, 0.14)'
                    }}
                    className="text-[4.3299rem] font-pp font-extrabold text-white leading-[4.0625rem] mt-5"
                >
                    {lang.redeem}
                </p>
                <p className="text-[2.1649rem] font-pp font-medium text-white/60">
                    {lang.code}
                </p>

                <div className="mt-[2.1219rem] w-[27.1875rem] relative">
                    <Input
                        id={'redeemCode'}
                        value={value}
                        update={val => setValue(val)}
                    />
                </div>

                <div className="mt-[1.3125rem] w-[27.1875rem]">
                    <Button
                        onClick={e => fetchNui('redeem', value)}
                        icon={Plus}
                        label={lang.buyCharacter}
                    />
                </div>
            </m.div>
        </>
    );
}
