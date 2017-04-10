# inputFileName = raw_input("please enter a encrypted file name: ")
# inputfile = open(inputFileName)

input = "pda lupdkj lnkcnwiiejc hwjcqwca swo ejrajpaz xu cqezk rwj nkooqi, w zqpyd ykilqpan lnkcnwiian, wxkqp 25 uawno wck. rwj nkooqi zabejaz deo ckwho bkn lupdkj wo bkhhkso: wj awou wjz ejpqepera hwjcqwca fqop wo lksanbqh wo iwfkn ykilapepkno; klaj okqnya, ok wjukja ywj ykjpnexqpa pk epo zarahkliajp; ykza pdwp eo wo qjzanopwjzwxha wo lhwej ajcheod; oqepwxehepu bkn aranuzwu pwogo, whhksejc bkn odknp zarahkliajp peiao"
# inputfile.close()
chars = list(input)

for i in range(0,len(chars)):
    if 'a' <=chars[i] <='v':
        chars[i] = chr(ord(chars[i]) + 4)
    elif 'w' <= chars[i] <='z':
        chars[i] = chr(ord(chars[i]) + 4 - 26)

output = ''.join(chars)
print(output)
