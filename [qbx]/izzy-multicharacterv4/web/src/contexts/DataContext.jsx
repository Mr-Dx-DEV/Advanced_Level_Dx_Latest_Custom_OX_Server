import { createContext, useContext, useState } from 'react';
import { useNuiEvent } from '../hooks/useNuiEvent';

const DataContext = createContext();
export const useData = () => useContext(DataContext);

export default function DataProvider({ children }) {
    const [page, setPage] = useState('character');
    const [data, setData] = useState({
        active: {
            firstname: 'IZZY',
            lastname: 'MARKHAM',
            id: 1,
            job: 'NONE',
            nationality: 'NONE',
            dob: '01-01-1999',
            cash: 0,
            bank: 0,
            gender: 'm'
        },
        characters: [
            {
                firstname: 'CREATE',
                lastname: 'CHARACTER',
                id: 1,
                job: 'NONE',
                nationality: 'NONE',
                dob: '01-01-1999',
                cash: 0,
                bank: 0,
                gender: 'm'
            },
            {
                firstname: 'CREATE',
                lastname: 'CHARACTER',
                id: 2,
                job: 'NONE',
                nationality: 'NONE',
                dob: '01-01-1999',
                cash: 0,
                bank: 0,
                gender: 'm'
            }
        ],
        socialMedias: [],
        nationalities: {},
        freeSlotAmount: 3,
        maxSlotAmount: 3,
        canDelete: true
    });

    useNuiEvent('setData', val => setData(prev => ({ ...prev, ...val })));
    useNuiEvent('setPage', setPage);

    const updateActive = val => setData(prev => ({ ...prev, active: val }));
    return (
        <DataContext.Provider value={{ ...data, page, setPage, updateActive }}>
            {children}
        </DataContext.Provider>
    );
}
