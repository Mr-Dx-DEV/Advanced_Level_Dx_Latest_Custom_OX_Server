import React, { useEffect, useState } from 'react';
import { motion as m } from 'framer-motion';
import { useLang } from 'contexts/LangContext';
import { Caret, Plus, Strip } from '../components/Icons';
import Input from '../components/Input';
import Select from '../components/Select';
import { useData } from 'contexts/DataContext';
import Button from '../components/Button';
import { fetchNui } from 'utils/fetchNui';
export default function CharacterCreator() {
    const { lang } = useLang();
    const { characters, setPage, nationalities } = useData();
    const [values, setValues] = useState({
        firstname: '',
        lastname: '',
        gender: 'm',
        dob: '',
        nationality: Object.keys(nationalities)[0]
    });
    return (
        <>
            <m.div
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 0.6 }}
                className="absolute left-0 top-0 w-full h-full bg-[#0000005E] backdrop-blur-[0.2rem]"
            />
            {characters.length > 0 && (
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
            )}
            <m.div
                initial={{ opacity: 0, right: '-20%' }}
                animate={{ opacity: 1, right: '10%' }}
                exit={{ opacity: 0, right: '-20%' }}
                transition={{ duration: 0.6 }}
                className="absolute top-1/2 -translate-y-1/2 z-10"
            >
                <p
                    style={{
                        textShadow: '0px 0px 50.7px rgba(255, 255, 255, 0.14)'
                    }}
                    className="text-[4.3299rem] font-pp font-extrabold text-white leading-[4.0625rem] mt-5"
                >
                    {values.firstname.trim() == ''
                        ? lang.firstname
                        : values.firstname}
                </p>
                <p className="text-[2.1649rem] font-pp font-medium text-white/60">
                    {values.lastname.trim() == ''
                        ? lang.lastname
                        : values.lastname}
                </p>

                <div className="w-[27.1875rem] grid grid-cols-2 gap-[0.9375rem] mt-[2.1875rem]">
                    {Object.keys(values).map(key => (
                        <>
                            {key !== 'gender' && key !== 'nationality' ? (
                                <Input
                                    key={'value-' + key}
                                    id={key}
                                    update={val =>
                                        setValues(prev => ({
                                            ...prev,
                                            [key]: val
                                        }))
                                    }
                                    value={values[key]}
                                />
                            ) : (
                                <Select
                                    key={'value-' + key}
                                    id={key}
                                    value={values[key]}
                                    update={val => {
                                        if (key == 'gender')
                                            fetchNui('changeGender', val);

                                        setValues(prev => ({
                                            ...prev,
                                            [key]: val
                                        }));
                                    }}
                                    columns={
                                        key == 'gender'
                                            ? {
                                                  m: lang.m,
                                                  f: lang.f
                                              }
                                            : nationalities
                                    }
                                />
                            )}
                        </>
                    ))}

                    <Button
                        onClick={e =>
                            fetchNui('create', {
                                ...values,
                                id: characters.length + 1
                            })
                        }
                        icon={Plus}
                        label={lang.createCharacter}
                    />
                </div>
            </m.div>
        </>
    );
}
