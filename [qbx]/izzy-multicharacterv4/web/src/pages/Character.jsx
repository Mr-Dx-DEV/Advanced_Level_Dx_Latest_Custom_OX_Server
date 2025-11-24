import React from 'react';
import { Caret, infoIcons, Plus2, Strip2 } from '../components/Icons';
import { useData } from 'contexts/DataContext';
import classNames from 'classnames';
import { formatter } from 'utils/misc';
import { useLang } from 'contexts/LangContext';
import { motion as m } from 'framer-motion';
import { fetchNui } from 'utils/fetchNui';

const COLUMNS = ['id', 'job', 'nationality', 'dob', 'cash', 'bank', 'gender'];
export default function Character() {
    const {
        active,
        characters,
        setPage,
        freeSlotAmount,
        maxSlotAmount,
        canDelete
    } = useData();
    const { lang } = useLang();
    return (
        <>
            <m.div
                initial={{ opacity: 0, right: '-20%' }}
                animate={{ opacity: 1, right: '10%' }}
                exit={{ opacity: 0, right: '-20%' }}
                transition={{ duration: 0.6 }}
                className="absolute top-1/2 -translate-y-1/2 z-10 flex flex-col items-center gap-y-[1.375rem]"
            >
                <div className="flex items-center gap-x-[1.0625rem]">
                    <div
                        onClick={e =>
                            characters[active.id - 1] &&
                            fetchNui('updateActive', characters[active.id - 1])
                        }
                        className={classNames(
                            'w-[3.25rem] h-[1.4375rem] rounded-[.3125rem] bg-[#FFFFFF0F] flex items-center justify-center select-none cursor-pointer hover:bg-white/[.37] group transition-all',
                            {
                                'opacity-50': !characters[active.id - 1]
                            }
                        )}
                    >
                        <Caret className="fill-white/[.31] group-hover:fill-white transition-colors" />
                    </div>

                    <div
                        onClick={e =>
                            characters[active.id + 1] &&
                            fetchNui('updateActive', characters[active.id + 1])
                        }
                        className={classNames(
                            'w-[3.25rem] h-[1.4375rem] rounded-[.3125rem] bg-[#FFFFFF0F] flex items-center justify-center select-none cursor-pointer hover:bg-white/[.37] group transition-all',
                            {
                                'opacity-50': !characters[active.id + 1]
                            }
                        )}
                    >
                        <Caret className="fill-white/[.31] group-hover:fill-white transition-colors rotate-180" />
                    </div>
                </div>

                <p
                    style={{
                        textShadow: '0px 0px 50.7px rgba(255, 255, 255, 0.14)'
                    }}
                    className="text-[5rem] font-pp font-extrabold uppercase text-white leading-[4.5rem]"
                >
                    {active.firstname} {active.lastname}
                </p>

                <div className="flex items-center gap-x-[.5031rem] mt-[1.375rem]">
                    {COLUMNS.map(key => (
                        <div className="w-[3.8341rem] h-[4.777rem] rounded-[.5028rem] bg-[#FFFFFF26] backdrop-blur-[0.6719rem] flex flex-col justify-center items-center gap-y-1 relative">
                            <div className="w-[1.6875rem] h-[1.6875rem]">
                                {React.createElement(
                                    infoIcons[key] ?? infoIcons['cash']
                                )}
                            </div>
                            <p
                                className={classNames(
                                    'text-[#FFFFFFB8] font-pp font-medium text-center',
                                    {
                                        '!text-[0.5938rem] my-[0.3125rem]':
                                            key == 'dob',
                                        '!text-sm my-0.5':
                                            key == 'cash' || key == 'bank',
                                        uppercase:
                                            key == 'nationality' || key == 'job'
                                    }
                                )}
                            >
                                {key == 'nationality' || key == 'job'
                                    ? active[key].slice(0, 3)
                                    : key == 'cash' || key == 'bank'
                                    ? formatter.format(active[key])
                                    : key == 'gender'
                                    ? lang[active[key]].slice(0, 1)
                                    : key == 'id'
                                    ? active[key] + 1
                                    : active[key]}
                            </p>
                        </div>
                    ))}
                </div>
            </m.div>

            <m.div
                initial={{ opacity: 0, y: '200%' }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: '200%' }}
                transition={{ duration: 0.6 }}
                className="absolute bottom-[3.9375rem] left-[26rem] text-white flex flex-col items-center gap-y-[1.375rem]"
            >
                <div className="flex items-center gap-x-2">
                    {Array.from({ length: maxSlotAmount }).map((_, key) => (
                        <div
                            onClick={e =>
                                characters[key]
                                    ? fetchNui('updateActive', characters[key])
                                    : setPage(
                                          freeSlotAmount >= key + 1
                                              ? 'creator'
                                              : 'redeem'
                                      )
                            }
                            className={classNames(
                                'w-9 h-9 rounded bg-[#FFFFFF26] backdrop-blur-[0.1406rem] flex items-center justify-center font-pp text-lg font-semibold hover:text-white hover:!bg-[#FFFFFF26] transition-colors select-none cursor-pointer group',
                                {
                                    '!bg-[#FFFFFF0F] text-white/40':
                                        active?.id !== key
                                }
                            )}
                        >
                            {characters[key] ? (
                                key + 1
                            ) : (
                                <Plus2
                                    className={
                                        'fill-white/40 group-hover:fill-white transition-colors'
                                    }
                                />
                            )}
                        </div>
                    ))}
                </div>
                <div className="flex items-center gap-x-4">
                    <div
                        onClick={e => fetchNui('play', active)}
                        className="w-[12.75rem] h-[3.5625rem] rounded bg-[#FFFFFF26] hover:bg-white/20 transition-colors backdrop-blur-[0.395rem] relative flex items-center justify-center select-none cursor-pointer"
                    >
                        <Strip2 className={'absolute left-0 top-0'} />
                        <p className="font-pp text-[1.0625rem] text-white/80">
                            {lang.playGame}
                        </p>
                    </div>
                    {canDelete && (
                        <div
                            onClick={e => fetchNui('delete', active.identifier)}
                            className="w-[12.75rem] h-[3.5625rem] rounded bg-[#FF585826] hover:bg-[#FF5858]/20 transition-colors backdrop-blur-[0.395rem] relative flex items-center justify-center select-none cursor-pointer"
                        >
                            <Strip2
                                className={'absolute left-0 top-0'}
                                color="#FF5858"
                            />
                            <p className="font-pp text-[1.0625rem] text-[#FF5858CC]">
                                {lang.delete}
                            </p>
                        </div>
                    )}
                </div>
            </m.div>
        </>
    );
}
