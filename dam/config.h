static int showbar           = 1;
static int topbar            = 1;
static const char *fonts[]   = { "monospace:size=10" };
static uint32_t colors[][3]  = {
	[SchemeNorm] = { 0xbbbbbbff, 0x000000ff },
	[SchemeSel]  = { 0xeeeeeeff, 0x427b58ff },
};

static char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const char *layouts[][2] = {
	{ "rivertile - left",   "[]=" },
	{ "rivertile - right",  "=[]" },
	{ "rivertile - top",    "[^]" },
	{ "rivertile - bottom", "[_]" },
	{ NULL,                 "><>" },
};

static const Button buttons[] = {
	{ ClkTagBar, BTN_LEFT,   command,  {.s = "set-focused-tags"} },
	{ ClkTagBar, BTN_RIGHT,  command,  {.s = "toggle-focused-tags"} },
	{ ClkTagBar, BTN_MIDDLE, command,  {.s = "set-view-tags"} },
	{ ClkTitle,  BTN_LEFT,   command,  {.s = "zoom"} },
};
