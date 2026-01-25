import React, { useState } from 'react';
import { CaretDown, infoIcons } from './Icons';
import { AnimatePresence, motion as m } from 'framer-motion';

export default function Select({ id, columns, value, update }) {
    const [opened, setOpened] = useState(false);

    return (
        <div className="w-full relative col-span-2">
            <div
                onClick={e => setOpened(prev => !prev)}
                className="w-full h-[3.9375rem] rounded-md bg-white/10 backdrop-blur-[0.4688rem] flex items-center justify-between px-[0.9375rem] select-none cursor-pointer"
            >
                <div className="flex items-center gap-x-[0.9375rem]">
                    {React.createElement(infoIcons[id] ?? infoIcons['cash'])}

                    <div className="w-px h-[2.375rem] bg-white/10" />
                    <p className="font-pp text-white">{columns[value]}</p>
                </div>

                <div className="w-[2.125rem] h-[2.125rem] rounded-md bg-white/5 flex items-center justify-center">
                    <CaretDown />
                </div>
            </div>

            <AnimatePresence>
                {opened && (
                    <m.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="absolute left-0 top-[4.1875rem] w-full max-h-72 overflow-y-auto z-50 flex flex-col gap-y-2 rounded-md"
                    >
                        {columns &&
                            Object.keys(columns).map(col => (
                                <div
                                    onClick={e => {
                                        update(col);
                                        setOpened(false);
                                    }}
                                    className="w-full h-[3.9375rem] rounded-md bg-white/10 hover:bg-white/[.15] transition-colors backdrop-blur-[0.4688rem] flex items-center justify-between px-5 select-none cursor-pointer flex-shrink-0"
                                >
                                    <p className="font-pp text-white">
                                        {columns[col]}
                                    </p>
                                </div>
                            ))}
                    </m.div>
                )}
            </AnimatePresence>
        </div>
    );
}
