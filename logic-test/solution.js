function kelompokkanAnagram(kata) {
    function urutkanString(str) {
        return str.split('').sort().join('');
    }

    var anagram = {};

    for (var i = 0; i < kata.length; i++) {
        var kataUrut = urutkanString(kata[i]);

        if (anagram[kataUrut]) {
            anagram[kataUrut].push(kata[i]);
        } else {
            anagram[kataUrut] = [kata[i]];
        }
    }

    return Object.values(anagram);
}

var kata = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];
var hasil = kelompokkanAnagram(kata);
console.log(hasil);
