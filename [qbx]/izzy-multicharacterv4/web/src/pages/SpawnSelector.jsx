import { useLang } from 'contexts/LangContext';
import React, { useEffect, useState } from 'react';
import { motion as m } from 'framer-motion';
import * as MdIcons from 'react-icons/md';

import { fetchNui } from 'utils/fetchNui';

export default function SpawnSelector() {
    const { lang } = useLang();
    const [locations, setLocations] = useState([]);

    useEffect(() => {
        const get = () => fetchNui('getLocations').then(setLocations);
        get();
    }, []);
    return (
        <>
            <m.div
                initial={{ opacity: 0, x: '-150%' }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: '-150%' }}
                transition={{ duration: 0.6 }}
                className="absolute left-[3.75rem] top-[2.6387rem]"
            >
                <div>
                    <p
                        style={{
                            textShadow:
                                '0px 0px 50.7px rgba(255, 255, 255, 0.14)'
                        }}
                        className="text-[3.64rem] font-pp font-extrabold text-white leading-[2.8125rem]"
                    >
                        {lang.spawn}
                    </p>
                    <p className="text-[1.82rem] font-pp font-medium text-white/60">
                        {lang.selection}
                    </p>
                </div>
            </m.div>

            <m.div
                initial={{ opacity: 0, y: '150%' }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: '150%' }}
                transition={{ duration: 0.6 }}
                className="absolute left-[3.75rem] bottom-[3.75rem] flex gap-x-[4.73rem] overflow-x-auto max-w-[77%]"
            >
                {locations.map(location => (
                    <div
                        onClick={e => fetchNui('updateLocation', location)}
                        className="flex items-center gap-x-[0.8325rem] relative group select-none cursor-pointer flex-shrink-0"
                    >
                        <div className="w-[4.3125rem] h-[4.3125rem] bg-[#FFFFFF0F] group-hover:bg-white/[.33] relative flex items-center justify-center rounded-[0.3026rem] overflow-hidden transition-colors">
                            <Strip />
                            {React.createElement(
                                MdIcons[location.icon] ?? MdIcons['MdClose'],
                                {
                                    className:
                                        'text-[2.1941rem] text-white/[.22] group-hover:text-white transition-colors duration-300'
                                }
                            )}
                        </div>
                        <div>
                            <p className="text-[1.3618rem] font-pp font-medium text-white/60 group-hover:text-white transition-colors leading-4 mt-2">
                                {location.name}
                            </p>
                            <p className="text-[1.0592rem] text-white/20 group-hover:text-white/[.33] font-pp transition-colors">
                                {lang.location}
                            </p>
                        </div>
                    </div>
                ))}
            </m.div>

            <m.div
                initial={{ opacity: 0, x: '150%' }}
                animate={{ opacity: 1, x: 0 }}
                exit={{ opacity: 0, x: '150%' }}
                transition={{ duration: 0.6 }}
                className="absolute right-[3.75rem] bottom-[3.75rem]"
                onClick={e => fetchNui('spawn')}
            >
                <div className="w-[16.375rem] h-[4.1875rem] rounded backdrop-blur-[0.25rem] bg-[#FFFFFF12] hover:bg-white/[.15] transition-colors flex items-center justify-center relative group select-none cursor-pointer">
                    <Strip2 />
                    <p className="font-pp text-[1.0625rem] text-white/80 group-hover:text-white transition-colors">
                        {lang.playGame}
                    </p>
                </div>
            </m.div>
        </>
    );
}

const Strip = () => {
    return (
        <svg
            width="69"
            height="69"
            viewBox="0 0 69 69"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            className="absolute left-0 top-0"
        >
            <rect
                opacity="0.3"
                x="22.217"
                y="-65.3684"
                width="25.4211"
                height="139.211"
                transform="rotate(31.6554 22.217 -65.3684)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.2"
                x="48.8485"
                y="-52.0526"
                width="16.5999"
                height="139.211"
                transform="rotate(31.6554 48.8485 -52.0526)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.1"
                x="65.7959"
                y="-38.7368"
                width="6.43573"
                height="139.211"
                transform="rotate(31.6554 65.7959 -38.7368)"
                fill="#D9D9D9"
            />
        </svg>
    );
};

const Strip2 = () => {
    return (
        <svg
            width="262"
            height="67"
            viewBox="0 0 262 67"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            className="absolute left-0 top-0"
        >
            <rect
                opacity="0.2"
                x="18.3531"
                y="-38"
                width="21"
                height="115"
                transform="rotate(31.6554 18.3531 -38)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.2"
                x="244.526"
                y="102.68"
                width="21"
                height="115"
                transform="rotate(-148.345 244.526 102.68)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.1"
                x="40.3531"
                y="-27"
                width="13.713"
                height="115"
                transform="rotate(31.6554 40.3531 -27)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.1"
                x="222.526"
                y="91.6802"
                width="13.713"
                height="115"
                transform="rotate(-148.345 222.526 91.6802)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.05"
                x="54.3531"
                y="-16"
                width="5.31647"
                height="115"
                transform="rotate(31.6554 54.3531 -16)"
                fill="#D9D9D9"
            />
            <rect
                opacity="0.05"
                x="208.526"
                y="80.6802"
                width="5.31647"
                height="115"
                transform="rotate(-148.345 208.526 80.6802)"
                fill="#D9D9D9"
            />
        </svg>
    );
};
