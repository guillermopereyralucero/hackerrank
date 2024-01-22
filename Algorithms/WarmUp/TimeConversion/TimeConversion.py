s='12:45:54PM'

def timeConversion(s):
    # Write your code here
    h24=''
    #SI NO ES PM (ES AM)
    if s.find('P')==-1:
        if s[:2]=='12':
            h24='00'+s[2:8]
        else:
            h24=s[:8]
    #SI ES PM
    else:
        if s[:2]=='12':
            h24=s[:8]
        else:
            h24=str(int(s[:2])+12)+s[2:8]
    print(h24)
    return h24

timeConversion(s)
