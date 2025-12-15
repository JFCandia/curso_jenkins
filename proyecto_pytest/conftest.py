from py.xml import html

def pytest_html_report_title(report):
    report.title = "Reporte QA - Jenkins Visa"

def pytest_html_results_summary(prefix, summary, postfix):
    prefix.extend([
        html.p("QA: Juan Francisco Candia"),
        html.p("Proyecto: Jenkins Visa | Rama: develop"),
        html.p("Fecha: 15-Dic-2025")
    ])

def pytest_configure(config):
    config._metadata['QA'] = 'Juan Francisco Candia'
    config._metadata['Proyecto'] = 'Certificación Visa - Jenkins'
    config._metadata['Entorno'] = 'Docker + WSL2'
    config._metadata['Rama'] = 'develop'
    config._metadata['Fecha'] = '15-Dic-2025'
