import json
import jsonpath


def read_elements_from_json(locator_name):
    f = open("C:/Users/sai/PycharmProjects/RobotAutomation/JSON files/Elements.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locator_name)
    return value[0]
