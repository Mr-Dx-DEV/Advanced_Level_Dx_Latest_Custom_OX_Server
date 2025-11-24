import classNames from 'classnames';
import React from 'react';
import { infoIcons } from './Icons';
import { useLang } from 'contexts/LangContext';

export default function Input({ id, value, update }) {
    const { lang } = useLang();
    return (
        <div
            className={classNames(
                'w-full h-[3.9375rem] rounded-md bg-white/10 backdrop-blur-[0.4688rem] flex items-center gap-x-[0.9375rem] px-[0.9375rem]',
                {
                    'col-span-2': id !== 'firstname' && id !== 'lastname'
                }
            )}
        >
            {React.createElement(infoIcons[id] ?? infoIcons['cash'])}

            <div className="w-px h-[2.375rem] bg-white/10" />
            <input
                type={id == 'dob' ? 'date' : 'text'}
                value={value}
                onChange={e => update(e.target.value)}
                placeholder={lang[id] ?? 'Unknown'}
                className="bg-transparent outline-none border-none w-full h-full font-pp placeholder:text-white/50 text-white"
            />
        </div>
    );
}
