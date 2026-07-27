<div class="split-login-wrapper">
    <!-- LEFT HERO PANEL CON 3 FOTOS EN ROTACIÓN (CLASES PURAS CSS) -->
    <div class="login-hero-panel">
        <div class="hero-bg slide-1 active"></div>
        <div class="hero-bg slide-2"></div>
        <div class="hero-bg slide-3"></div>
        <div class="hero-overlay"></div>

        <div class="hero-content">
            <div class="hero-brand">HRINSER</div>
            <p class="hero-desc">Plataforma CRM Enterprise de Gestión Comercial y Relaciones de Negocio.</p>
        </div>

        <div class="hero-footer">
            <div class="hero-copy">&copy; 2026 HRINSER SpA. Gestión Comercial Enterprise.</div>
            <div class="slide-dots">
                <div class="dot active" onclick="gotoLoginSlide(0)"></div>
                <div class="dot" onclick="gotoLoginSlide(1)"></div>
                <div class="dot" onclick="gotoLoginSlide(2)"></div>
            </div>
        </div>
    </div>

    <!-- RIGHT FORM PANEL OSCURO COHERENTE -->
    <div class="login-form-panel">
        <div id="login" class="panel panel-default block-center-sm">
            <div class="panel-heading text-left" style="background: transparent; border: none; padding: 0 0 20px 0;">
                <h2 class="login-welcome-title">Bienvenido</h2>
                <p class="login-welcome-subtitle">Ingresa tus credenciales para acceder</p>
            </div>
            <div class="panel-body{{#if anotherUser}} another-user{{/if}}" style="padding: 0;">
                <form id="login-form">
                    {{#if hasSignIn}}
                    <div class="cell" data-name="sign-in">
                        {{#if hasFallback}}
                        <div class="pull-right">
                            <a
                                role="button"
                                tabindex="0"
                                class="btn btn-link btn-icon"
                                data-action="showFallback"
                            ><span class="fas fa-chevron-down"></span></a>
                        </div>
                        {{/if}}
                        <button
                            class="btn btn-default btn-x-wide"
                            id="sign-in"
                            type="button"
                        >{{signInText}}</button>
                    </div>
                    {{/if}}
                    <div class="form-group cell" data-name="username">
                        <label for="field-userName">{{translate 'Username'}}</label>
                        <input
                            type="text"
                            name="username"
                            id="field-userName"
                            class="form-control"
                            autocapitalize="off"
                            spellcheck="false"
                            tabindex="1"
                            autocomplete="username"
                            maxlength="255"
                        >
                    </div>
                    <div class="form-group cell" data-name="password">
                        <label for="field-password">{{translate 'Password'}}</label>
                        <div data-role="password-input-container">
                            <input
                                type="password"
                                name="password"
                                id="field-password"
                                class="form-control"
                                tabindex="2"
                                autocomplete="current-password"
                                maxlength="255"
                            >
                            <a
                                role="button"
                                data-action="toggleShowPassword"
                                class="text-soft"
                                title="{{translate 'View'}}"
                            ><span class="far fa-eye"></span></a>
                        </div>
                    </div>
                    {{#if anotherUser}}
                    <div class="form-group cell">
                        <label>{{translate 'Log in as'}}</label>
                        <div>{{anotherUser}}</div>
                    </div>
                    {{/if}}
                    <div class="margin-top-2x cell" data-name="submit">
                        {{#if showForgotPassword}}
                        <a
                            role="button"
                            class="btn btn-link btn-text btn-text-hoverable btn-sm pull-right margin-top-sm"
                            data-action="passwordChangeRequest"
                            tabindex="4"
                        >{{translate 'Forgot Password?' scope='User'}}</a>{{/if}}
                        <button
                            type="submit"
                            class="btn btn-primary btn-s-wide"
                            id="btn-login"
                            tabindex="3"
                        >{{logInText}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
