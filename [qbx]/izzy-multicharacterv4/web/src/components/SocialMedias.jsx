import React from 'react';
import { motion as m } from 'framer-motion';
import { useData } from 'contexts/DataContext';
import * as FaIcons from 'react-icons/fa6';
import { Photo } from './Icons';
export default function SocialMedias() {
    const { socialMedias, setPage } = useData();
    return (
        <m.div
            initial={{ opacity: 0, x: '125%' }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: '125%' }}
            transition={{ duration: 0.6 }}
            className="absolute right-[3.125rem] top-[3.125rem] flex items-center gap-x-2.5"
        >
            {socialMedias.map(media => (
                <div
                    onClick={e => window.invokeNative('openUrl', media.link)}
                    className="flex flex-col items-center gap-y-[0.2813rem] relative select-none cursor-pointer group"
                >
                    <div className="w-[2.6563rem] h-[2.6563rem] rounded group-hover:bg-white/40 transition-colors bg-white/[.06] duration-300 flex items-center justify-center">
                        {React.createElement(
                            FaIcons[media.icon] ?? FaIcons['FaX'],
                            {
                                className:
                                    'text-[1.375rem] text-white/[.24] group-hover:text-white transition-colors duration-300'
                            }
                        )}
                    </div>
                    <div className="w-[1.6875rem] h-0.5 opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-white" />
                </div>
            ))}

            <div
                onClick={e => setPage('photo')}
                className="flex flex-col items-center gap-y-[0.2813rem] relative select-none cursor-pointer group"
            >
                <div className="w-[2.6563rem] h-[2.6563rem] rounded group-hover:bg-white/40 transition-colors bg-white/[.06] duration-300 flex items-center justify-center">
                    <Photo
                        className={
                            'fill-white/[.24] group-hover:fill-white transition-colors duration-300'
                        }
                    />
                </div>
                <div className="w-[1.6875rem] h-0.5 opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-white" />
            </div>
        </m.div>
    );
}
