﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rovolution.Server {
	
	public static class DateTimeExtensions {

		public static int UnixTimestamp(this DateTime dt) {
			return Convert.ToInt32((DateTime.Now - new DateTime(1970, 1, 1)).TotalSeconds);
		}

	}

}
