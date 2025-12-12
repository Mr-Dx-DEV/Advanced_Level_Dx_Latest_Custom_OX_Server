import React from 'react';
import { motion as m } from 'framer-motion';
import classNames from 'classnames';
import { useData } from 'contexts/DataContext';
import { Caret } from 'components/Icons';
import { fetchNui } from 'utils/fetchNui';

const FILTERS = [
    {
        id: 'default'
    },
    {
        id: 'spectator4',
        className: 'bg-black/40'
    },
    {
        id: 'CAMERA_secuirity_FUZZ',
        className: 'bg-black/70'
    },
    {
        id: 'BeastLaunch02',
        className: 'bg-yellow-400/20'
    },
    {
        id: 'AirRaceBoost01',
        className: 'bg-blue-400/20'
    },
    {
        id: 'AirRaceBoost02',
        className: 'bg-green-400/20'
    }
];
export default function PhotoMode() {
    const { setPage } = useData();
    return (
        <m.div
            initial={{ opacity: 0, left: '-5%' }}
            animate={{ opacity: 1, left: 0 }}
            exit={{ opacity: 0, left: '-5%' }}
            transition={{ duration: 0.6 }}
            className="absolute top-1/2 -translate-y-1/2 z-10"
        >
            <div
                onClick={e => setPage('character')}
                className="w-[2.5rem] h-[1.4375rem] rounded-r-[.3125rem] bg-[#FFFFFF0F] flex items-center justify-center select-none cursor-pointer hover:bg-white/[.37] group transition-colors mb-4 relative"
            >
                <Caret className="fill-white/[.31] group-hover:fill-white transition-colors" />
            </div>
            <div className="flex flex-col gap-y-5">
                {FILTERS.map(filter => (
                    <div
                        onClick={e => fetchNui('changeFilter', filter)}
                        className="h-[3.4375rem] flex items-center gap-x-1 relative -left-16 hover:-left-10 transition-all duration-300 select-none cursor-pointer group"
                    >
                        <div className="w-[6.4375rem] h-full rounded-md bg-[#D9D9D9] relative overflow-hidden">
                            <div
                                style={{
                                    background: `linear-gradient(0deg, rgba(0, 0, 0, 0.15) 0%, rgba(0, 0, 0, 0.15) 100%), url(./filterPhoto.png) lightgray 50% / cover no-repeat`
                                }}
                                className="w-full h-full absolute left-0 top-0"
                            />
                            <div
                                className={classNames(
                                    'w-full h-full absolute left-0 top-0',
                                    { [filter.className]: filter.className }
                                )}
                            />
                        </div>

                        <div className="w-0.5 h-full bg-white opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
                    </div>
                ))}
            </div>
        </m.div>
    );
}
