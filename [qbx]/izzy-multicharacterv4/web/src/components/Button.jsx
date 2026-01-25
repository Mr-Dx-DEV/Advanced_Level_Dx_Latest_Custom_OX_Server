import React from 'react';
import { Strip } from './Icons';

export default function Button({ icon, label, onClick }) {
    return (
        <div
            onClick={onClick}
            className="h-[4.3125rem] rounded-md bg-white/10 backdrop-blur-[0.4688rem] relative col-span-2 flex items-center justify-center gap-x-3 mt-6 select-none cursor-pointer hover:bg-white/[.15] transition-colors group"
        >
            <Strip className={'absolute left-0 top-0'} />
            {React.createElement(icon, {
                className:
                    'fill-white/[.45] group-hover:fill-white/60 transition-colors'
            })}
            <p className="text-xl text-white/[.45] group-hover:text-white/60 font-pp transition-colors  ">
                {label}
            </p>
        </div>
    );
}
