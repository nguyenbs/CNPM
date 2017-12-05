package findbystring;

import java.util.ArrayList;

public class SplitString {
	private ArrayList<String> splitstring(String Something) {
		ArrayList<String> keys = new ArrayList<String>();
		if (Something.length() > 0) {
			for (int i = 0; i < Something.length(); i++) {
				if (Something.charAt(i) != ' ') {
					if (keys.size() == 0) {
						keys.add("");
					}
					keys.set(keys.size() - 1, keys.get(keys.size() - 1) + Something.charAt(i));
				} else if (i + 1 < Something.length() && Something.charAt(i + 1) != ' ') {
					keys.add("");
				}
			}
		}
		if (keys.get(keys.size() - 1) == "") {
			keys.remove(keys.size() - 1);
		}
		return keys;
	}
}
