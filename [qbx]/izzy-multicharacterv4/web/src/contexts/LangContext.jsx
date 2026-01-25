import { createContext, useContext, useState } from 'react';
import { useNuiEvent } from '../hooks/useNuiEvent';

const LangContext = createContext();
export const useLang = () => useContext(LangContext);

export default function LangProvider({ children }) {
    const [lang, setLang] = useState({
        playGame: 'Play Game',
        photoMode: 'PHOTO MODE',
        redeemCode: 'REDEEM CODE',
        exitGame: 'EXIT GAME',
        createCharacter: 'Create Character',
        createNewCharacter: 'CREATE NEW CHARACTER',
        firstname: 'Firstname',
        lastname: 'Lastname',
        gender: 'Gender',
        dob: 'Date of Birth',
        nationality: 'Nationality',
        m: 'Male',
        f: 'Female',
        redeem: 'REDEEM',
        code: 'CODE',
        buyCharacter: 'Buy Character',
        delete: 'Delete'
    });

    useNuiEvent('setLang', setLang);

    return (
        <LangContext.Provider value={{ lang }}>{children}</LangContext.Provider>
    );
}
