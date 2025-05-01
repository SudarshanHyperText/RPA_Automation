
*** Variables ***

${PRODUCT_LIST_CONTAINER}    xpath=//div[@class='grid-products']

${Product_Search_Bar}    xpath=//input[@type='text']

${Searched_Element_Title}    xpath=(//div[@class='data']//p//b)[1]

${Brand_Name_Radio_Buttons}    xpath=(//input[@type='radio' and @value='{brand}'])[2]