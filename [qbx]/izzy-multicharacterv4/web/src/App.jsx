import { useState } from 'react';
import { useNuiEvent } from './hooks/useNuiEvent';
import Character from 'pages/Character';
import Background from 'components/Background';
import { useData } from 'contexts/DataContext';
import { AnimatePresence } from 'framer-motion';
import CharacterCreator from 'pages/CharacterCreator';
import RedeemCode from 'pages/RedeemCode';
import PhotoMode from 'pages/PhotoMode';
import SocialMedias from 'components/SocialMedias';
import BackdropFilter from 'components/BackdropFilter';
import { motion as m } from 'framer-motion';
import SpawnSelector from 'pages/SpawnSelector';

function App() {
    const { page } = useData();
    const [display, setDisplay] = useState(false);
    useNuiEvent('HandleDisplay', setDisplay);

    return (
        <AnimatePresence>
            {display && (
                <>
                    <BackdropFilter />
                    <m.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="w-full h-screen m-0 overflow-hidden relative"
                    >
                        <Background />
                        <AnimatePresence>
                            {page == 'character' && <Character />}
                        </AnimatePresence>
                        <AnimatePresence>
                            {page == 'creator' && <CharacterCreator />}
                        </AnimatePresence>
                        <AnimatePresence>
                            {page == 'redeem' && <RedeemCode />}
                        </AnimatePresence>
                        <AnimatePresence>
                            {page == 'photo' && <PhotoMode />}
                        </AnimatePresence>
                        <AnimatePresence>
                            {page == 'spawn' && <SpawnSelector />}
                        </AnimatePresence>
                        <SocialMedias />
                    </m.div>
                </>
            )}
        </AnimatePresence>
    );
}

export default App;
