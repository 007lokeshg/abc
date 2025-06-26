%dw 2.0
output application/xml writeDeclaration = false
---
html: {
	head: {
		meta @(charset: "UTF-8"): meta @(name: "viewport",content: "width=device-width, initial-scale=1.0"): {
		},
		title: "Email Table Format"
	},
	body @(style: "font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px;"): {
		table @(role: "presentation",width: "100%",cellpadding: "0",cellspacing: "0",border: "0" ,align: "center"): {
			tr: {
				td @(align: "center"): {
					table @(role: "presentation",width: "600",cellpadding: "0",cellspacing: "0",border: "0" ,style: "background-color: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);"): {
						tr: {
							td @(align: "center",style: "background-color: #0073e6; color: white; font-size: 20px; font-weight: bold; padding: 15px; border-radius: 8px 8px 0 0;"): "Measurement/Fuel API Report"
						},
						tr: {
							td @(style: "padding: 20px;"): {
								p: "Dear Team,",
								p: "Below is the summary of Material Update : " ++ vars.currentRecord.'_meta'.id ++ " execution :",
								table @(role: "presentation",width: "100%",cellpadding: "8",cellspacing: "0",border: "1" ,style: "border-collapse: collapse; text-align: left;"): {
									tr @(style: "background-color: #0073e6; color: white;"): {
										th: "Endpoints",
										th: "Status",
										th: "Remarks"
									},
									tr: {
										td: "Material Update In  Informatica",
										td @(style: "color: green;"): "Failed",
										td: error.description
									}
								},
								p: "For more details, check the logs."
							},
						},
						tr: {
							td @(align: "center",style: "background-color: #f4f4f4; padding: 10px; font-size: 12px; color: #777; border-radius: 0 0 8px 8px;"): {
								p: "This is an automated email from MuleSoft Integration System.",
								p: "copyright 2025 CRH " ++ now() as String{
									format: "yyyy-MM-dd HH:mm:ss.SSS"
								}
							}
						}
					}
				}
			}
		}
	}
}
