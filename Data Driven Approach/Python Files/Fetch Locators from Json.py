import json
import jsonpath


def fetch_locators(locator_name):
    f = open("C:/Users/sai/PycharmProjects/RobotAutomation/Data Driven Approach/Elements/Elements.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locator_name)
    return value[0]
