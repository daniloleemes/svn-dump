﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rovolution.Server.Objects {

	public enum EItemType {
		Healing = 0,
		Unknown, // 1
		Useable,  // 2
		Etc,     // 3
		Weapon,  // 4
		Armor,   // 5
		Card,    // 6
		PetEgg,  // 7
		PetArmor,// 8
		Unknown2,// 9
		Ammo,    // 10
		DelayConsumed,// 11
		Cash = 18
	}

}
