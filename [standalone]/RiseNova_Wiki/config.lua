Config = {}

Config.PanelTitle  = "RiseNova Wiki"
Config.Subtitle    = "Quick reference for commands, RP and server info."

Config.OpenCommand = "rnwiki"
Config.DefaultKey  = "F5"

Config.Theme = {
    AccentColor = "#3350c8",
    HeaderGradientFrom = "#1e2738",
    HeaderGradientTo   = "#283954",
    DarkOverlayAlpha   = 0.4
}

Config.Categories = {

    --------------------------------------------------
    -- GETTING STARTED
    --------------------------------------------------
    {
        id = "getting_started",
        title = "Getting Started",
        pages = {
            {
                id = "new_city",
                title = "New to the City",
                tag   = "Basics",
                framework = "all",
                body  = [[
Welcome to the city!

This server is a serious roleplay environment. You are expected to:
• Stay in character at all times.
• Respect other players and staff.
• Read the rules and follow them.

Quick tips:
• Press F1–F3 or open your phone to see important menus (depends on your framework).
• Use /report if you are stuck or need help.
• Do not rush into crime. Build a background and make connections first.]]
            },
            {
                id = "first_steps",
                title = "First Steps",
                tag   = "Basics",
                framework = "all",
                body  = [[
Your first 30–60 minutes should focus on learning the city rather than rushing money.

Suggested steps:
• Visit the city hall to get basic documents (ID, licenses, etc.) if your server uses it.
• Look for basic starter jobs (delivery, garbage, taxi, bus, etc.).
• Learn where the main hotspots are: garages, clothing stores, hospital, police station.
• Make friends rather than enemies. Connections are more valuable than cash.]]
            },
            {
                id = "rules_summary",
                title = "Rules Summary",
                tag   = "Rules",
                framework = "all",
                body  = [[
This is only a SHORT summary. Always read the full rules on Discord / website.

1. No RDM or VDM
   • No random killing or ramming without solid RP reason.

2. FearRP
   • Value your life. Act scared when outnumbered or at gunpoint.

3. Metagaming
   • Do not use info from streams, Discord, or OOC chat in RP.

4. Powergaming
   • Do not force actions on others without giving them a chance to react.

5. Combat Logging
   • Do not quit the game to avoid RP, jail, death, or interactions.

6. Common Sense
   • If you think "this might be against the rules", don't do it.]]
            },
            {
                id = "faq_new_players",
                title = "FAQ for New Players",
                tag   = "FAQ",
                framework = "all",
                body  = [[
Q: I'm lost, what do I do?
A: Ask in /ooc or /report politely. Other players and staff can guide you.

Q: How do I make money?
A: Start with legal jobs: deliveries, garbage, taxi, bus, fishing, etc.

Q: Can I just start shooting people?
A: No. You need a proper RP reason to escalate to violence.

Q: Can I speak my own language?
A: Local OOC is usually English. Check your server rules for language guidelines.

Q: I was RDM'ed, what now?
A: Use /report. Give time, location, and the other player's ID if possible.]]
            }
        }
    },

    --------------------------------------------------
    -- ROLEPLAY BASICS
    --------------------------------------------------
    {
        id = "rp_basics",
        title = "Roleplay Basics",
        pages = {
            {
                id = "what_is_rp",
                title = "What is Roleplay?",
                tag   = "RP",
                framework = "all",
                body  = [[
Roleplay (RP) means acting as a character in a shared world.

Think about:
• Who is your character?
• What do they want?
• What is their background and personality?

Good RP:
• You react as your character would, not as yourself.
• You make realistic decisions, not "gamey" ones.
• You focus on stories and interactions, not "winning".]]
            },
            {
                id = "fearrp_powergaming",
                title = "FearRP & Powergaming",
                tag   = "RP",
                framework = "all",
                body  = [[
FearRP:
You must act as if your life has value.
• Do not rush someone with a gun while unarmed.
• Do not ignore clear threats or deadly weapons.

Powergaming:
Forcing actions on others without a chance to respond.
• Bad: /me knocks you out and steals everything.
• Good: /me swings a punch towards the man's jaw.

Always give players a fair chance to react with /me or /do.]]
            },
            {
                id = "character_building",
                title = "Building a Character",
                tag   = "Character",
                framework = "all",
                body  = [[
A strong character makes RP fun for you and others.

Consider:
• Name: Pick something realistic and not trollish.
• Background: Where are they from? What is their past?
• Personality: Calm, aggressive, funny, shy?
• Goals: Rich, powerful, respected, feared, loved?

Avoid:
• Superheroes, gods, or impossible characters.
• Mixing OOC drama into IC.
• Constantly changing personality every restart.]]
            },
            {
                id = "conflict_and_consequence",
                title = "Conflict & Consequences",
                tag   = "RP",
                framework = "all",
                body  = [[
Conflict is part of RP, but it should feel fair and fun.

• Do not escalate to violence instantly; use words first where possible.
• Allow other players chances to talk, negotiate, or flee.
• Accept losses. Sometimes you will be robbed, arrested, or lose items.

Remember:
If you never lose, your wins have no meaning.
If everyone "wins", the story becomes boring.]]
            }
        }
    },

    --------------------------------------------------
    -- COMMANDS & COMMUNICATION
    --------------------------------------------------
    {
        id = "commands",
        title = "Commands & Communication",
        pages = {
            {
                id = "player_commands",
                title = "Player Commands",
                tag   = "/me /do /ooc",
                framework = "all",
                body  = [[
Common RP commands (may differ per framework):

/me – Describe visible actions.
   Example: /me pats the person down looking for weapons.

/do – Describe context or what others would notice.
   Example: /do There would be a visible bulge in his jacket.

/ooc – Out-of-character chat for quick clarification.
/report – Contact staff for help.
/help – Show command list (if available).

Always keep /ooc respectful and not spammy.]]
            },
            {
                id = "voice_radio",
                title = "Voice & Radio",
                tag   = "Comms",
                framework = "all",
                body  = [[
Voice & Radio basics (keys may differ on your server):

• N – Push to talk (voice).
• Z / CAPS – Radio push to talk (if using a radio script).
• Use your phone or radio item to join frequencies.

Guidelines:
• Do not scream or blast music.
• Keep comms clear during serious situations.
• Use radio codes if your job requires it (PD/EMS).]]
            },
            {
                id = "comms_etiquette",
                title = "Communication Etiquette",
                tag   = "Etiquette",
                framework = "all",
                body  = [[
Good communication keeps RP fun:

• Do not talk over everyone constantly.
• Let people finish their sentences.
• In tense scenes, keep radio clear and to the point.
• Avoid OOC arguments in voice. Use /report if you have an issue.

Remember:
Sometimes silence is powerful. You do not need to speak 24/7.]]
            }
        }
    },

    --------------------------------------------------
    -- CITY LIFE (ECONOMY, VEHICLES, CRIME, ETC.)
    --------------------------------------------------
    {
        id = "city_life",
        title = "City Life & Systems",
        pages = {
            {
                id = "making_money",
                title = "Making Money (Legal)",
                tag   = "Economy",
                framework = "all",
                body  = [[
Legal ways to make money (these vary by server):

• Starter jobs: delivery, garbage, bus, taxi, trucking.
• Gathering jobs: fishing, mining, farming, hunting.
• Whitelisted jobs: police, EMS, mechanic, real estate, etc.

Tips:
• Use legal jobs early to build some savings.
• Do not rush into high-risk crime with no plan or contacts.
• Being reliable at a job can lead to promotions and more RP.]]
            },
            {
                id = "vehicles_basic",
                title = "Vehicles & Garages",
                tag   = "Vehicles",
                framework = "all",
                body  = [[
Vehicles are usually stored and retrieved at garages.

Common systems:
• Personal vehicles: bought from car dealers.
• Job vehicles: taken from job garages while on duty.
• Impound: vehicles can be seized by police or towed.

Good practice:
• Park inside marked spaces or garages when possible.
• Do not ram other vehicles randomly.
• Do not store "crime cars" in open, obvious places.]]
            },
            {
                id = "crime_and_police",
                title = "Crime & Police Response",
                tag   = "Crime",
                framework = "all",
                body  = [[
Criminal RP should still respect quality and fairness.

Guidelines:
• Have a reason for your crimes. Don't rob EVERY person you see.
• Robberies and kidnappings should involve tension and RP, not just speedrunning.
• Expect the police to respond with appropriate force and tactics.

Police:
• Should offer you chances to speak and defend yourself.
• Must follow server rules and use appropriate force.
• May seize illegal items or vehicles used in crime.]]
            },
            {
                id = "injuries_and_hospital",
                title = "Injuries & Hospital",
                tag   = "Medical",
                framework = "all",
                body  = [[
Injury & medical RP is part of realism.

• If downed, do not talk like nothing happened.
• EMS may ask questions like "What hurts?" or "Do you remember what happened?"
• You can accept or refuse some treatment, but respect EMS RP.

Do not:
• Spam /ooc when downed.
• Force "I am fine" RP after major injuries.
• Ignore serious injuries just to get back into combat.]]
            }
        }
    },

    --------------------------------------------------
    -- JOBS (WITH JOB-RESTRICTED PAGES)
    --------------------------------------------------
    {
        id = "jobs",
        title = "Jobs",
        pages = {

            --------------------------------------------------
            -- POLICE (VISIBLE ONLY IF job = 'police')
            --------------------------------------------------
            {
                id = "police_job",
                title = "Police Guide",
                tag   = "Police",
                framework = "all",
                jobs = {"police"},   -- ONLY police players
                body  = [[
This page is visible only to players with the 'police' job.

Example responsibilities:
• Respond to emergency calls.
• Enforce traffic and criminal laws.
• Conduct investigations and write reports.
• Maintain professional behaviour at all times.

Suggested sections to customize:
• How to go on/off duty.
• How to get vehicles and equipment.
• Use of force policy.
• Radio codes and call structure.]]
            },

            --------------------------------------------------
            -- AMBULANCE / EMS
            --------------------------------------------------
            {
                id = "ems_job",
                title = "EMS / Ambulance Guide",
                tag   = "EMS",
                framework = "all",
                jobs = {"ambulance", "ems"},  -- ONLY EMS jobs
                body  = [[
This page is visible only to EMS / Ambulance players.

Core duties:
• Respond to 911/999 calls for injuries or medical issues.
• Stabilize patients on scene and during transport.
• Communicate with police and hospital staff.
• Maintain professionalism and empathy.

Suggested sections to customize:
• Scene safety & approach.
• Basic treatment flow (check pulse, bleeding, breathing).
• When to call for police backup.
• Hospital procedures & discharges.]]
            },

            --------------------------------------------------
            -- MECHANIC
            --------------------------------------------------
            {
                id = "mechanic_job",
                title = "Mechanic Guide",
                tag   = "Mechanic",
                framework = "all",
                jobs = {"mechanic"},  -- ONLY mechanic job
                body  = [[
This page is visible only to mechanics.

Core duties:
• Repair damaged vehicles.
• Install upgrades within server rules.
• Tow and recover abandoned or broken vehicles.
• Provide customer RP at the workshop.

Suggested sections to customize:
• Standard repair pricing.
• Upgrade rules (no unrealistic builds).
• Towing & impound cooperation with PD.
• Customer service and roleplay expectations.]]
            },

            --------------------------------------------------
            -- JOB TEMPLATE FOR OWNERS
            --------------------------------------------------
            {
                id = "job_template",
                title = "Job Guide Template",
                tag   = "Template",
                framework = "all",
                jobs = {"examplejob"},  -- Change this!
                body  = [=[
HOW TO ADD YOUR OWN JOB PAGE:

1) Copy this block inside the Jobs category.
2) Change:
   id          = "your_job_id"
   title       = "Your Job Name"
   jobs        = {"jobname"}  -- example: {"taxi"}
   framework   = "qbcore" or "esx" or "qbox" or "all"

3) Replace the body text with your real job guide.

Example:

{
    id = "taxi_job",
    title = "Taxi Driver",
    tag   = "Taxi",
    framework = "all",
    jobs = {"taxi"},
    body = [[
This page is visible only to players with the 'taxi' job.

Explain how to:
• Start your shift.
• Pick up and drop off customers.
• Charge fair prices.
• Provide good RP and conversation.]]
}
]=]
            }

        }
    },

    --------------------------------------------------
    -- STAFF / ADMIN (STAFF-ONLY)
    --------------------------------------------------
    {
        id = "staff",
        title = "Staff & Admin",
        pages = {
            {
                id = "staff_tools",
                title = "Staff Tools & Commands",
                tag   = "Staff",
                framework = "all",
                staffOnly = true,
                body = [[
This page is visible only to staff (admin/mod).

Suggested content:
• Staff commands (teleport, noclip, revive, bring, etc.).
• How to handle /report tickets.
• Staff communication rules (no leaking private logs).
• Escalation path: helper -> moderator -> admin -> management.]]
            },
            {
                id = "staff_conduct",
                title = "Staff Conduct",
                tag   = "Staff",
                framework = "all",
                staffOnly = true,
                body = [[
Staff must:
• Remain neutral in player conflicts.
• Avoid abusing powers to benefit their own characters.
• Always log serious actions (bans, warns, big refunds).

Steps to handle reports:
1) Hear both sides.
2) Check logs/clips if available.
3) Explain the decision clearly.
4) Document punishments as required by server policy.]]
            }
        }
    }

}


--[[
======================================================
   HOW TO ADD JOB-RESTRICTED / STAFF PAGES
======================================================

To make a page only show for a specific job, add:

    jobs = {"police"}

or multiple jobs:

    jobs = {"police", "sheriff", "statepolice"}

To make it staff-only:

    staffOnly = true

To restrict to a framework (optional):

    framework = "qbcore"   -- or "esx", "qbox", "all"

If "framework" is missing, it defaults to "all".

======================================================
]]