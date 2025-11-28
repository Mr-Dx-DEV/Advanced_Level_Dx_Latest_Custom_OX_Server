Config = {}

Config.useModernUI = true               -- Em março de 2023, as tarefas passaram por uma grande reformulação e a interface do usuário foi alterada. Defina como falso para usar a interface do usuário ANTIGA, que não é mais suportada.
    Config.splitReward = false          -- Esta opção só funciona quando useModernUI for falso. Se esta opção for verdadeira, o pagamento será: (Config.OnePercentWorth * Progress) / PartyCount; se falso, então: (Config.OnePercentWorth * Progress).
Config.UseBuiltInNotifications = true   -- Defina como falso se desejar usar o estilo de notificação do seu framework. Caso contrário, as notificações modernas integradas serão usadas.

Config.letBossSplitReward = true                    -- Se for verdadeiro, o chefe poderá gerenciar a porcentagem de recompensas de todo o grupo no menu. Se você definir como falso, todos receberão a mesma quantia.
Config.multiplyRewardWhileWorkingInGroup = true     -- Se for falso, a recompensa será mantida por padrão. Por exemplo, US$ 1.000 por completar uma tarefa completa. Se você definir como verdadeiro, o pagamento dependerá de quantos jogadores houver no grupo. Por exemplo, se a tarefa completa for de US$ 1.000, se o jogador trabalhar em um grupo de 4 membros, a recompensa será de US$ 4.000. (baseReward * partyCount)

Config.MailboxRenewalTime = 45000 * 60      -- Apenas uma carta pode ser retirada de uma caixa. Isso é global, então se um jogador retirar de uma caixa de correio, o próximo jogador não poderá mais retirar dela. Este é o tempo de renovação; neste caso, após 45 minutos, você poderá retirar cartas daquela caixa de correio específica novamente.
Config.SyncMailboxStatus = true             -- Se for verdadeiro, quando um jogador coletar cartas de uma caixa, o segundo jogador verá a informação de que a caixa está vazia. Se for falso, cada jogador terá seu próprio status de caixa de correio.
Config.Props = {
    --Adereços dos quais as letras podem ser coletadas
    
    `prop_postbox_01a`,
    -- Adicione mais se quiser!
}

Config.UseTarget = false                        -- Altere para verdadeiro se quiser usar um sistema de destino. Todas as configurações do sistema de destino estão no arquivo target.lua.
Config.RequiredJob = "none"                     -- Defina como "none" se não quiser usar jobs. Se estiver usando target, você precisa definir o parâmetro "job" dentro de cada exportação em target.lua.
Config.RequireJobAlsoForFriends = true          -- Se for falso, somente o host precisa ter o trabalho. Se for verdadeiro, todos do grupo precisam ter o Config.RequiredJob.
Config.RequiredItem = "none"                    -- Item obrigatório necessário para iniciar o trabalho. Defina como "nenhum" se não quiser usar RequiredItem.
Config.RequireOneFriendMinimum = false          -- Defina como verdadeiro se quiser forçar os jogadores a criar equipes
Config.Scenario = "prop_human_parking_meter"    -- Uma animação que é reproduzida durante a busca em uma caixa. Observação: este deve ser um cenário, não uma animação.
Config.JobVehicleModel = "17mov_PostmanCar"              -- Modelo de trabalho de veículo
Config.Price = 2                                -- 2$ por uma letra

Config.RequireWorkClothes = false                   -- Defina como verdadeiro para trocar as roupas dos jogadores sempre que eles estiverem iniciando o trabalho.
Config.RequireItemFromWholeTeam = true              -- Se for falso, somente o host precisa ter o item necessário; caso contrário, toda a equipe precisará dele.

Config.EnableVehicleTeleporting = true          -- Se for verdadeiro, o script teletransportará o host para o veículo da empresa. Se for falso, o veículo da empresa aparecerá, mas todo o esquadrão precisará entrar no carro manualmente.
Config.PenaltyAmount = 500                      -- Penalidade que é cobrada quando um jogador termina o trabalho sem um veículo da empresa
Config.DontPayRewardWithoutVehicle = false      -- Defina como verdadeiro se você não quiser pagar recompensa aos jogadores que desejam terminar sem veículo da empresa (aceitando a penalidade)
Config.DeleteVehicleWithPenalty = false         -- Excluir veículo mesmo que não seja veículo da empresa
Config.JobCooldown = 0 * 60 -- 10 * 60            -- 0 minutos de espera entre a criação de trabalhos (entre parênteses há um exemplo de 10 minutos)
Config.GiveKeysToAllLobby = true                -- Defina como falso se desejar fornecer chaves apenas para o criador do grupo ao iniciar o trabalho
Config.ProgressBarOffset = "25px"                   -- Valor em px do deslocamento do contador na tela
Config.ProgressBarAlign = "bottom-right"            -- Alinhamento da barra de progresso

-- ^ Opções: superior esquerdo, superior central, superior direito, inferior esquerdo, inferior central, inferior direito

Config.RewardItemsToGive = {
    -- {
    --     item_name = "water",
    --     chance = 100,
    --     amountPerMailbox = 1,
    -- },
}

Config.RestrictBlipToRequiredJob = false            -- Defina como verdadeiro para ocultar o aviso de trabalho para jogadores que não possuem RequiredJob. Se o trabalho requerido for "nenhum", esta opção não terá efeito.
Config.Blips = {                                    -- Aqui você pode configurar o blip da empresa.
    [1] = {
        Sprite = 365,
        Color = 44,
        Scale = 0.8,
        Pos = vector3(-232.16, -915.15, 32.31),
        Label = 'Trabalho de carteiro'
    },
}

Config.MarkerSettings = {                       -- Usado somente quando Config.UseTarget = false. Cores do marcador. Ativo = quando o jogador está dentro do marcador.
    Active = {
        r = 88, 
        g = 105,
        b = 255,
        a = 200,
    },
    UnActive = {
        r = 43,
        g = 57,
        b = 181,
        a = 200,
    }
}

Config.Locations = {                            -- Aqui você pode alterar todos os locais de trabalho base.
    DutyToggle = {
        Coords = {
            vector3(-232.16, -915.15, 32.31),
        },
        CurrentAction = 'open_dutyToggle',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~scomeçar/terminar~s~ trabalho.',
        type = 'duty',
        scale = {x = 1.0, y = 1.0, z = 1.0}
    },
    FinishJob = {
        Coords = {
            vector3(-276.66, -894.68, 31.08),
        },
        CurrentAction = 'finish_job',
        CurrentActionMsg = 'Pressione ~INPUT_CONTEXT~ para ~y~finalizar o ~s~Expediente.',
        scale = {x = 3.0, y = 3.0, z = 3.0}
    },

}

Config.SpawnPoint = vector4(-276.66, -894.68, 31.08, 337.31)  -- Ponto de desova do veículo
Config.EnableCloakroom = false                                -- Defina como falso se quiser ocultar o botão "CLoakroom" no WorkMenu

Config.Clothes = {
    male = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 0, variation = 0},
        ["pants"] = {clotheId = 10, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 36, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 250, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    },
    
    female = {
        ["mask"] = {clotheId = 0, variation = 0},
        ["arms"] = {clotheId = 14, variation = 0},
        ["pants"] = {clotheId = 6, variation = 0},
        ["bag"] = {clotheId = 0, variation = 0},
        ["shoes"] = {clotheId = 0, variation = 0},
        ["t-shirt"] = {clotheId = 15, variation = 0},
        ["torso"] = {clotheId = 258, variation = 0},
        ["decals"] = {clotheId = 0, variation = 0},
        ["kevlar"] = {clotheId = 0, variation = 0},
    }
}

Config.Lang = {

    -- Aqui você pode alterar todas as traduções usadas em client.lua e server.lua. Não se esqueça de traduzi-las também nos arquivos HTML e JS.

    -- Client
    ["no_permission"] = "Somente o dono do Grupo pode fazer isso!",
    ["keybind"] = 'Interação do Marcador',
    ["too_far"] = "Seu grupo começou a trabalhar, mas você está muito longe da sede. Você ainda pode se juntar a eles.",
    ["kicked"] = "Você expulsou %s da Equipe",
    ["alreadyWorking"] = "Primeiro, conclua o pedido anterior.",
    ["quit"] = "Você saiu da equipe",
    ["cantSpawnVeh"] = "O local de desova dos caminhões está ocupado.",
    ["nobodyNearby"] = "Não há ninguém por perto",
    ["pickLetter"] = "Colete cartas",
    ["checking"] = "Você está verificando a caixa de correio",
    ["spawnpointOccupied"] = "O local de desova do carro está ocupado",
    ["notADriver"] = "Você precisa ser um motorista de veículo para terminar o trabalho",
    ["cantInvite"] = "Para poder convidar mais pessoas, você deve primeiro terminar o trabalho",
    ["tutorial"] = "O trabalho envolve coletar cartas das caixas de correio. Corra, uma caixa de correio só pode ser coletada de vez em quando. Não deixe a concorrência te ultrapassar! Você pode encontrar essas caixas perto das ruas principais.",
    ["wrongReward1"] = "A porcentagem de pagamento deve estar entre 0 e 100",
    ["wrongReward2"] = "A porcentagem total de todos os pagamentos excedeu 100%",
    ["partyIsFull"] = "Falha ao enviar um convite, seu grupo está cheio",
    ["inviteSent"] = "Convite enviado!",
    ["cantLeaveLobby"] = "Você não pode sair do saguão enquanto estiver trabalhando. Primeiro, encerre o trabalho.",
    ["wrongVeh"] = "Seu último veículo não é o da empresa. Você precisa dirigir o veículo da empresa",
    
    -- Server
    ["isAlreadyHost"] = "Este jogador lidera seu time.",
    ["isBusy"] = "Este jogador já pertence a outro time.", 
    ["hasActiveInvite"] = "Este jogador já tem um convite ativo de alguém.",
    ["HaveActiveInvite"] = "Você já tem um convite ativo para se juntar à equipe.",
    ["InviteDeclined"] = "Seu convite foi recusado.",
    ["InviteAccepted"] = "Seu convite foi aceito!",
    ["error"] = "Ocorreu um problema ao ingressar em uma equipe. Tente novamente mais tarde.",
    ["kickedOut"] = "Você foi expulso do time!",
    ["reward"] = "Você recebeu um pagamento de R$",
    ["RequireOneFriend"] = "Este trabalho requer pelo menos um membro da equipe",
    ["deposit"] = "Nós cobramos o depósito do carro",
    ["depositReturned"] = "Devolvemos o depósito do carro",
    ["empty"] = "Alguém já coletou cartas desta caixa de correio, tente novamente mais tarde",
    ["collected"] = "Você coletou cartas",
    ["broken"] = "A caixa de correio foi danificada. As cartas não podem ser retiradas dela.",
    ["dontHaveReqItem"] = "Você ou alguém da sua equipe não possui o item necessário para começar a trabalhar",
    ["penalty"] = "Você pagou uma multa no valor de ",
    ["clientsPenalty"] = "O anfitrião da equipe aceitou a punição. Você não recebeu o pagamento",
    ["notEverybodyHasRequiredJob"] = "Nem todos os seus amigos têm o emprego necessário",
    ["someoneIsOnCooldown"] = "%s não posso começar o trabalho agora (cooldown: %s)", 
    ["hours"] = "h",
    ["minutes"] = "m",
    ["seconds"] = "s",
    ["newBoss"] = "O antigo chefe do lobby deixou o servidor. Agora você é o líder da equipe.",
} 