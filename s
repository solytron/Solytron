<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SOLYTRON - Equipo de F1 Escolar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-color: #0AF2FF;
            --dark-bg: #000000;
            --dark-secondary: #1a1a1a;
            --light-text: #ffffff;
            --accent-silver: #C7C7C7;
            --transition: all 0.3s ease;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--dark-bg);
            color: var(--light-text);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* EDITABLE CONTENT STYLES */
        [contenteditable] {
            outline: 2px dashed var(--primary-color);
            padding: 5px;
            border-radius: 4px;
            cursor: text;
            transition: var(--transition);
        }

        [contenteditable]:hover {
            background-color: rgba(10, 242, 255, 0.1);
            outline: 2px solid var(--primary-color);
        }

        [contenteditable]:focus {
            background-color: rgba(10, 242, 255, 0.15);
            outline: 2px solid var(--primary-color);
        }

        /* HEADER */
        header {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.95);
            backdrop-filter: blur(10px);
            z-index: 1000;
            border-bottom: 1px solid var(--primary-color);
            padding: 1rem 2rem;
        }

        nav {
            max-width: 1400px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: var(--primary-color);
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 0 0 20px rgba(10, 242, 255, 0.5);
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        nav a {
            color: var(--light-text);
            text-decoration: none;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: var(--transition);
            position: relative;
        }

        nav a:hover {
            color: var(--primary-color);
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary-color);
            transition: var(--transition);
        }

        nav a:hover::after {
            width: 100%;
        }

        /* HERO SECTION */
        .hero {
            margin-top: 60px;
            height: 100vh;
            background: linear-gradient(135deg, #000000 0%, #1a1a1a 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 50% 50%, rgba(10, 242, 255, 0.1) 0%, transparent 70%);
            animation: pulse 4s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { opacity: 0.5; }
            50% { opacity: 1; }
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 900px;
            padding: 2rem;
        }

        .hero h1 {
            font-size: 5rem;
            font-weight: 900;
            margin-bottom: 1rem;
            color: var(--primary-color);
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(10, 242, 255, 0.6);
            animation: slideDown 0.8s ease-out;
        }

        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .hero p {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            color: var(--accent-silver);
            letter-spacing: 2px;
            animation: slideUp 0.8s ease-out 0.2s both;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .cta-button {
            display: inline-block;
            padding: 1rem 3rem;
            background: var(--primary-color);
            color: var(--dark-bg);
            text-decoration: none;
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 2px;
            border: 2px solid var(--primary-color);
            border-radius: 50px;
            transition: var(--transition);
            cursor: pointer;
            font-size: 1rem;
            animation: slideUp 0.8s ease-out 0.4s both;
        }

        .cta-button:hover {
            background: transparent;
            color: var(--primary-color);
            box-shadow: 0 0 20px rgba(10, 242, 255, 0.6);
        }

        /* SECTIONS */
        section {
            padding: 6rem 2rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        section h2 {
            font-size: 3rem;
            margin-bottom: 3rem;
            color: var(--primary-color);
            text-transform: uppercase;
            letter-spacing: 3px;
            position: relative;
            padding-bottom: 1rem;
        }

        section h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100px;
            height: 3px;
            background: linear-gradient(90deg, var(--primary-color), transparent);
        }

        /* ABOUT SECTION */
        .about {
            background: linear-gradient(135deg, #1a1a1a 0%, #000000 100%);
        }

        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .about-text h3 {
            font-size: 1.5rem;
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        .about-text p {
            font-size: 1.1rem;
            color: var(--accent-silver);
            margin-bottom: 1rem;
            line-height: 1.8;
        }

        .values {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem;
            margin-top: 2rem;
        }

        .value-item {
            padding: 1.5rem;
            background: rgba(10, 242, 255, 0.05);
            border-left: 3px solid var(--primary-color);
            border-radius: 4px;
            transition: var(--transition);
        }

        .value-item:hover {
            background: rgba(10, 242, 255, 0.1);
            transform: translateX(10px);
        }

        .value-item strong {
            color: var(--primary-color);
            display: block;
            margin-bottom: 0.5rem;
        }

        /* TEAM SECTION */
        .team {
            background: linear-gradient(135deg, #000000 0%, #1a1a1a 100%);
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
        }

        .team-card {
            background: rgba(10, 242, 255, 0.05);
            border: 1px solid rgba(10, 242, 255, 0.2);
            border-radius: 8px;
            padding: 2rem;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .team-card:hover {
            background: rgba(10, 242, 255, 0.1);
            border-color: var(--primary-color);
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(10, 242, 255, 0.2);
        }

        .team-card .avatar {
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, var(--primary-color), #0080ff);
            border-radius: 50%;
            margin: 0 auto 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            font-weight: bold;
            color: var(--dark-bg);
        }

        .team-card h3 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
            font-size: 1.3rem;
        }

        .team-card .role {
            color: var(--accent-silver);
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 1rem;
        }

        .team-card p {
            color: var(--light-text);
            font-size: 0.95rem;
            line-height: 1.6;
        }

        /* CAR SECTION */
        .car {
            background: linear-gradient(135deg, #1a1a1a 0%, #000000 100%);
        }

        .car-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .car-image {
            background: linear-gradient(135deg, rgba(10, 242, 255, 0.1), rgba(10, 242, 255, 0.05));
            border: 2px solid rgba(10, 242, 255, 0.3);
            border-radius: 8px;
            padding: 3rem;
            text-align: center;
            font-size: 4rem;
            min-height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .car-specs {
            display: grid;
            gap: 1.5rem;
        }

        .spec-item {
            padding: 1.5rem;
            background: rgba(10, 242, 255, 0.05);
            border-left: 3px solid var(--primary-color);
            border-radius: 4px;
        }

        .spec-item h4 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            font-size: 0.9rem;
            letter-spacing: 1px;
        }

        .spec-item p {
            color: var(--accent-silver);
            line-height: 1.6;
        }

        /* PROCESS SECTION */
        .process {
            background: linear-gradient(135deg, #000000 0%, #1a1a1a 100%);
        }

        .timeline {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            position: relative;
        }

        .timeline-item {
            background: rgba(10, 242, 255, 0.05);
            border: 1px solid rgba(10, 242, 255, 0.2);
            border-radius: 8px;
            padding: 2rem;
            text-align: center;
            transition: var(--transition);
            position: relative;
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            top: -30px;
            left: 50%;
            transform: translateX(-50%);
            width: 20px;
            height: 20px;
            background: var(--primary-color);
            border-radius: 50%;
            border: 3px solid var(--dark-bg);
        }

        .timeline-item:hover {
            background: rgba(10, 242, 255, 0.1);
            border-color: var(--primary-color);
            transform: translateY(-10px);
        }

        .timeline-item h4 {
            color: var(--primary-color);
            margin-bottom: 1rem;
            text-transform: uppercase;
            font-size: 1.1rem;
        }

        .timeline-item p {
            color: var(--accent-silver);
            font-size: 0.95rem;
            line-height: 1.6;
        }

        /* ACHIEVEMENTS SECTION */
        .achievements {
            background: linear-gradient(135deg, #1a1a1a 0%, #000000 100%);
        }

        .achievements-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }

        .achievement-card {
            background: rgba(10, 242, 255, 0.05);
            border: 1px solid rgba(10, 242, 255, 0.2);
            border-radius: 8px;
            padding: 2rem;
            text-align: center;
            transition: var(--transition);
        }

        .achievement-card:hover {
            background: rgba(10, 242, 255, 0.1);
            border-color: var(--primary-color);
            transform: scale(1.05);
        }

        .achievement-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
        }

        .achievement-card h4 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            font-size: 1rem;
        }

        .achievement-card p {
            color: var(--accent-silver);
            font-size: 0.9rem;
        }

        /* SPONSORS SECTION */
        .sponsors {
            background: linear-gradient(135deg, #000000 0%, #1a1a1a 100%);
        }

        .sponsors-intro {
            text-align: center;
            margin-bottom: 3rem;
        }

        .sponsors-intro p {
            font-size: 1.1rem;
            color: var(--accent-silver);
            max-width: 800px;
            margin: 0 auto 2rem;
            line-height: 1.8;
        }

        .sponsors-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .sponsor-card {
            background: rgba(10, 242, 255, 0.05);
            border: 2px solid rgba(10, 242, 255, 0.2);
            border-radius: 8px;
            padding: 2rem;
            text-align: center;
            transition: var(--transition);
            min-height: 150px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sponsor-card:hover {
            background: rgba(10, 242, 255, 0.1);
            border-color: var(--primary-color);
            transform: scale(1.05);
        }

        .sponsor-card p {
            color: var(--accent-silver);
            font-weight: bold;
            font-size: 1.1rem;
        }

        .sponsor-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        .sponsor-buttons button {
            padding: 0.8rem 2rem;
            background: var(--primary-color);
            color: var(--dark-bg);
            border: none;
            border-radius: 50px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.9rem;
        }

        .sponsor-buttons button:hover {
            background: transparent;
            color: var(--primary-color);
            border: 2px solid var(--primary-color);
        }

        /* CONTACT SECTION */
        .contact {
            background: linear-gradient(135deg, #1a1a1a 0%, #000000 100%);
        }

        .contact-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
        }

        .contact-info {
            display: grid;
            gap: 2rem;
        }

        .contact-item {
            padding: 1.5rem;
            background: rgba(10, 242, 255, 0.05);
            border-left: 3px solid var(--primary-color);
            border-radius: 4px;
        }

        .contact-item h4 {
            color: var(--primary-color);
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            font-size: 0.9rem;
        }

        .contact-item p {
            color: var(--accent-silver);
        }

        .contact-item a {
            color: var(--primary-color);
            text-decoration: none;
            transition: var(--transition);
        }

        .contact-item a:hover {
            text-decoration: underline;
        }

        .contact-form {
            display: grid;
            gap: 1rem;
        }

        .contact-form input,
        .contact-form textarea {
            padding: 1rem;
            background: rgba(10, 242, 255, 0.05);
            border: 1px solid rgba(10, 242, 255, 0.2);
            border-radius: 4px;
            color: var(--light-text);
            font-family: inherit;
            transition: var(--transition);
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            outline: none;
            border-color: var(--primary-color);
            background: rgba(10, 242, 255, 0.1);
        }

        .contact-form textarea {
            resize: vertical;
            min-height: 150px;
        }

        .contact-form button {
            padding: 1rem;
            background: var(--primary-color);
            color: var(--dark-bg);
            border: none;
            border-radius: 4px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            cursor: pointer;
            transition: var(--transition);
            font-size: 1rem;
        }

        .contact-form button:hover {
            background: transparent;
            color: var(--primary-color);
            border: 2px solid var(--primary-color);
        }

        /* FOOTER */
        footer {
            background: #000000;
            border-top: 1px solid var(--primary-color);
            padding: 2rem;
            text-align: center;
            color: var(--accent-silver);
        }

        footer p {
            margin-bottom: 1rem;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 1rem;
        }

        .social-links a {
            color: var(--primary-color);
            text-decoration: none;
            font-size: 1.2rem;
            transition: var(--transition);
        }

        .social-links a:hover {
            transform: scale(1.2);
            text-shadow: 0 0 10px rgba(10, 242, 255, 0.6);
        }

        /* EDIT MODE INDICATOR */
        .edit-mode-banner {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--primary-color);
            color: var(--dark-bg);
            padding: 1rem 1.5rem;
            border-radius: 50px;
            font-weight: bold;
            z-index: 999;
            box-shadow: 0 0 20px rgba(10, 242, 255, 0.6);
            animation: pulse 2s ease-in-out infinite;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }

            .hero p {
                font-size: 1rem;
            }

            nav ul {
                gap: 1rem;
                font-size: 0.8rem;
            }

            section {
                padding: 3rem 1rem;
            }

            section h2 {
                font-size: 2rem;
            }

            .about-content,
            .car-content,
            .contact-content {
                grid-template-columns: 1fr;
            }

            .team-grid,
            .timeline,
            .achievements-grid,
            .sponsors-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- HEADER -->
    <header>
        <nav>
            <div class="logo">SOLYTRON</div>
            <ul>
                <li><a href="#about">QuiÃ©nes Somos</a></li>
                <li><a href="#team">Equipo</a></li>
                <li><a href="#car">El Coche</a></li>
                <li><a href="#process">Proceso</a></li>
                <li><a href="#achievements">Logros</a></li>
                <li><a href="#sponsors">Sponsors</a></li>
                <li><a href="#contact">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <!-- HERO SECTION -->
    <section class="hero">
        <div class="hero-content">
            <h1 contenteditable="true">SOLYTRON</h1>
            <p contenteditable="true">Velocidad impulsada por innovaciÃ³n</p>
            <button class="cta-button" onclick="document.getElementById('about').scrollIntoView({behavior: 'smooth'})">ConÃ³cenos</button>
        </div>
    </section>

    <!-- ABOUT SECTION -->
    <section class="about" id="about">
        <h2>QuiÃ©nes Somos</h2>
        <div class="about-content">
            <div class="about-text">
                <h3 contenteditable="true">SOLYTRON: IngenierÃ­a del Futuro</h3>
                <p contenteditable="true">Somos un equipo de ingenierÃ­a estudiantil dedicado a la innovaciÃ³n en FÃ³rmula 1 escolar. Combinamos creatividad, precisiÃ³n tÃ©cnica y trabajo en equipo para diseÃ±ar y fabricar vehÃ­culos de alto rendimiento que compiten a nivel profesional.</p>
                <p contenteditable="true">Nuestro objetivo es demostrar que un grupo de estudiantes puede trabajar con la misma excelencia que un equipo tÃ©cnico real, utilizando procesos profesionales, software avanzado y una mentalidad de competiciÃ³n.</p>
            </div>
            <div class="values">
                <div class="value-item">
                    <strong contenteditable="true">ðŸš€ InnovaciÃ³n</strong>
                    <p contenteditable="true">Buscamos soluciones creativas y tecnolÃ³gicas</p>
                </div>
                <div class="value-item">
                    <strong contenteditable="true">âš™ï¸ PrecisiÃ³n</strong>
                    <p contenteditable="true">Cada detalle cuenta en nuestro diseÃ±o</p>
                </div>
                <div class="value-item">
                    <strong contenteditable="true">ðŸ”§ IngenierÃ­a</strong>
                    <p contenteditable="true">Aplicamos ciencia y tÃ©cnica avanzada</p>
                </div>
                <div class="value-item">
                    <strong contenteditable="true">ðŸ‘¥ Equipo</strong>
                    <p contenteditable="true">La uniÃ³n hace la fuerza en SOLYTRON</p>
                </div>
            </div>
        </div>
    </section>

    <!-- TEAM SECTION -->
    <section class="team" id="team">
        <h2>Nuestro Equipo</h2>
        <div class="team-grid">
            <div class="team-card">
                <div class="avatar">NC</div>
                <h3 contenteditable="true">Nicolas HernÃ¡ndez-Franch</h3>
                <div class="role" contenteditable="true">LÃ­der de Equipo</div>
                <p contenteditable="true">Coordina todas las Ã¡reas del proyecto y asegura la cohesiÃ³n del equipo</p>
            </div>
            <div class="team-card">
                <div class="avatar">DR</div>
                <h3 contenteditable="true">Daniel Rivas Hervalejo</h3>
                <div class="role" contenteditable="true">Ingeniero de DiseÃ±o</div>
                <p contenteditable="true">Responsable del modelado CAD y diseÃ±o aerodinÃ¡mico del coche</p>
            </div>
            <div class="team-card">
                <div class="avatar">AH</div>
                <h3 contenteditable="true">Ãlvaro HernÃ¡ndez Pareja</h3>
                <div class="role" contenteditable="true">Ingeniero de FabricaciÃ³n</div>
                <p contenteditable="true">Supervisa la construcciÃ³n y optimizaciÃ³n del prototipo</p>
            </div>
            <div class="team-card">
                <div class="avatar">PH</div>
                <h3 contenteditable="true">Pablo Hidalgo Martinez</h3>
                <div class="role" contenteditable="true">Director de Marketing</div>
                <p contenteditable="true">Gestiona la identidad visual y estrategia de comunicaciÃ³n</p>
            </div>
            <div class="team-card">
                <div class="avatar">FC</div>
                <h3 contenteditable="true">Felipe Castellano Rodriguez</h3>
                <div class="role" contenteditable="true">Gerente de Recursos</div>
                <p contenteditable="true">Administra presupuesto, patrocinios y logÃ­stica del equipo</p>
            </div>
            <div class="team-card">
                <div class="avatar">JM</div>
                <h3 contenteditable="true">Javier MartÃ­n Ampudia-Navarro</h3>
                <div class="role" contenteditable="true">DiseÃ±ador GrÃ¡fico</div>
                <p contenteditable="true">Crea la identidad visual y materiales de presentaciÃ³n</p>
            </div>
        </div>
    </section>

    <!-- CAR SECTION -->
    <section class="car" id="car">
        <h2>El Coche: SOLYTRON X1</h2>
        <div class="car-content">
            <div class="car-image">
                ðŸŽï¸
            </div>
            <div class="car-specs">
                <div class="spec-item">
                    <h4 contenteditable="true">Concepto AerodinÃ¡mico</h4>
                    <p contenteditable="true">DiseÃ±o ultrafino con nariz afilada para reducciÃ³n mÃ¡xima de resistencia. Aletas laterales optimizadas para estabilidad en curvas.</p>
                </div>
                <div class="spec-item">
                    <h4 contenteditable="true">Materiales Avanzados</h4>
                    <p contenteditable="true">ConstrucciÃ³n ligera con materiales de alta resistencia. OptimizaciÃ³n de peso para mÃ¡xima aceleraciÃ³n y velocidad.</p>
                </div>
                <div class="spec-item">
                    <h4 contenteditable="true">Innovaciones TÃ©cnicas</h4>
                    <p contenteditable="true">Sistema de suspensiÃ³n optimizado. Ruedas de bajo rozamiento. DistribuciÃ³n de peso perfectamente equilibrada.</p>
                </div>
                <div class="spec-item">
                    <h4 contenteditable="true">CategorÃ­a</h4>
                    <p contenteditable="true">Development Class - DiseÃ±o, fabricaciÃ³n y rendimiento de nivel profesional.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- PROCESS SECTION -->
    <section class="process" id="process">
        <h2>Proceso de DiseÃ±o</h2>
        <div class="timeline">
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸ“ Bocetos</h4>
                <p contenteditable="true">Fase inicial de conceptualizaciÃ³n y lluvia de ideas. DefiniciÃ³n de la filosofÃ­a de diseÃ±o y objetivos tÃ©cnicos.</p>
            </div>
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸ’» Modelado CAD</h4>
                <p contenteditable="true">CreaciÃ³n del modelo 3D en Fusion 360. Iteraciones y ajustes basados en anÃ¡lisis tÃ©cnico.</p>
            </div>
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸŒªï¸ AnÃ¡lisis CFD</h4>
                <p contenteditable="true">SimulaciÃ³n aerodinÃ¡mica para optimizar resistencia y estabilidad. Pruebas virtuales de rendimiento.</p>
            </div>
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸ”§ FabricaciÃ³n</h4>
                <p contenteditable="true">ConstrucciÃ³n del prototipo fÃ­sico. Ensamblaje de componentes y ajustes finales.</p>
            </div>
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸ Pruebas</h4>
                <p contenteditable="true">Ensayos en pista. OptimizaciÃ³n de rendimiento y correcciÃ³n de problemas.</p>
            </div>
            <div class="timeline-item">
                <h4 contenteditable="true">ðŸŽ¯ Competencia</h4>
                <p contenteditable="true">ParticipaciÃ³n en eventos regionales. DemostraciÃ³n de velocidad, diseÃ±o y profesionalismo.</p>
            </div>
        </div>
    </section>

    <!-- ACHIEVEMENTS SECTION -->
    <section class="achievements" id="achievements">
        <h2>Logros y Objetivos</h2>
        <div class="achievements-grid">
            <div class="achievement-card">
                <div class="achievement-icon">ðŸ†</div>
                <h4 contenteditable="true">Ganar Regionales</h4>
                <p contenteditable="true">Objetivo principal: ser campeones en la competencia regional</p>
            </div>
            <div class="achievement-card">
                <div class="achievement-icon">ðŸŽ¨</div>
                <h4 contenteditable="true">Mejor DiseÃ±o</h4>
                <p contenteditable="true">Reconocimiento por excelencia en diseÃ±o y estÃ©tica</p>
            </div>
            <div class="achievement-card">
                <div class="achievement-icon">âš¡</div>
                <h4 contenteditable="true">Coche MÃ¡s RÃ¡pido</h4>
                <p contenteditable="true">OptimizaciÃ³n mÃ¡xima de velocidad y aceleraciÃ³n</p>
            </div>
            <div class="achievement-card">
                <div class="achievement-icon">ðŸŽ¤</div>
                <h4 contenteditable="true">PresentaciÃ³n Verbal</h4>
                <p contenteditable="true">ComunicaciÃ³n profesional y convincente del proyecto</p>
            </div>
            <div class="achievement-card">
                <div class="achievement-icon">ðŸŒŸ</div>
                <h4 contenteditable="true">Identidad SÃ³lida</h4>
                <p contenteditable="true">Marca reconocible y profesional en todo el proyecto</p>
            </div>
            <div class="achievement-card">
                <div class="achievement-icon">ðŸš€</div>
                <h4 contenteditable="true">InnovaciÃ³n</h4>
                <p contenteditable="true">Soluciones tÃ©cnicas Ãºnicas y creativas</p>
            </div>
        </div>
    </section>

    <!-- SPONSORS SECTION -->
    <section class="sponsors" id="sponsors">
        <h2>Patrocinadores</h2>
        <div class="sponsors-intro">
            <p contenteditable="true">SOLYTRON busca alianzas estratÃ©gicas con empresas que compartan nuestra visiÃ³n de innovaciÃ³n y excelencia. Ser patrocinador de SOLYTRON significa invertir en talento joven, tecnologÃ­a avanzada y una marca en crecimiento.</p>
        </div>
        <div class="sponsors-grid">
            <div class="sponsor-card">
                <p contenteditable="true">Sponsor 1</p>
            </div>
            <div class="sponsor-card">
                <p contenteditable="true">Sponsor 2</p>
            </div>
            <div class="sponsor-card">
                <p contenteditable="true">Sponsor 3</p>
            </div>
            <div class="sponsor-card">
                <p contenteditable="true">Sponsor 4</p>
            </div>
        </div>
        <div class="sponsor-buttons">
            <button onclick="alert('Descargando dossier de patrocinio...')">ðŸ“¥ Descargar Dossier</button>
            <button onclick="document.getElementById('contact').scrollIntoView({behavior: 'smooth'})">ðŸ“§ Contactar</button>
        </div>
    </section>

    <!-- CONTACT SECTION -->
    <section class="contact" id="contact">
        <h2>Contacto</h2>
        <div class="contact-content">
            <div class="contact-info">
                <div class="contact-item">
                    <h4>ðŸ“§ Email</h4>
                    <p><a href="mailto:solytron@claretsevilla.org" contenteditable="true">solytron@claretsevilla.org</a></p>
                </div>
                <div class="contact-item">
                    <h4>ðŸ‘¨â€ðŸ« Mentor</h4>
                    <p><strong contenteditable="true">Antonio MuÃ±oz Matute</strong></p>
                    <p><a href="mailto:antoniomunoz@claretsevilla.org" contenteditable="true">antoniomunoz@claretsevilla.org</a></p>
                </div>
                <div class="contact-item">
                    <h4>ðŸŒ Redes Sociales</h4>
                    <div class="social-links">
                        <a href="#" title="Instagram">ðŸ“±</a>
                        <a href="#" title="Twitter">ð•</a>
                        <a href="#" title="LinkedIn">ðŸ’¼</a>
                        <a href="#" title="YouTube">â–¶ï¸</a>
                    </div>
                </div>
            </div>
            <form class="contact-form" onsubmit="handleSubmit(event)">
                <input type="text" placeholder="Tu nombre" required>
                <input type="email" placeholder="Tu email" required>
                <input type="text" placeholder="Asunto">
                <textarea placeholder="Tu mensaje" required></textarea>
                <button type="submit">Enviar Mensaje</button>
            </form>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2025 SOLYTRON - Equipo de F1 Escolar. Todos los derechos reservados.</p>
        <p contenteditable="true">DiseÃ±ado con innovaciÃ³n y precisiÃ³n | Claretiano Sevilla</p>
    </footer>

    <!-- EDIT MODE BANNER -->
    <div class="edit-mode-banner">
        âœï¸ Modo Editable Activado
    </div>

    <script>
        function handleSubmit(event) {
            event.preventDefault();
            alert('Â¡Mensaje enviado! Nos pondremos en contacto pronto.');
            event.target.reset();
        }

        // Smooth scroll for navigation
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Save edits to localStorage
        document.querySelectorAll('[contenteditable]').forEach(element => {
            element.addEventListener('blur', function() {
                localStorage.setItem('edit_' + this.textContent.substring(0, 20), this.innerHTML);
            });
        });

        // Load saved edits from localStorage
        window.addEventListener('load', function() {
            document.querySelectorAll('[contenteditable]').forEach(element => {
                const saved = localStorage.getItem('edit_' + element.textContent.substring(0, 20));
                if (saved) {
                    element.innerHTML = saved;
                }
            });
        });
    </script>
</body>
</html>
