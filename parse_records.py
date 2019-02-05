
def read_file(name):
    PE = []
    PL = []
    TE = []
    TL = []

    with open(name, 'r') as f:
        _, _, *content = f.readlines()
        content = [line.split('|') for line in content]

        for c in content:
            record = c[0].strip().split('ehg')[1]
            premature = c[4].strip()
            early = c[5].strip()

            print(record, premature, early)

            if early == 't' and premature == 't':
                PE.append(int(record))
            elif early == 't' and premature == 'f':
                TE.append(int(record))
            elif early == 'f' and premature == 't':
                PL.append(int(record))
            elif early == 'f' and premature == 'f':
                TL.append(int(record))

    write2file('PE', PE)
    write2file('PL', PL)
    write2file('TE', TE)
    write2file('TL', TL)


def write2file(name, l):
    with open(name + '.txt', 'w') as f:
        for item in l:
            f.write("%s " % item)


if __name__ == '__main__':
    name = 'tpehgdb_smr.txt'
    read_file(name)
