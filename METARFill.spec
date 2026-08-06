# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['login_page.py'],
    pathex=[],
    binaries=[],
    datas=[('logo-bmkg.png', '.'), ('logo-bmkg.webp', '.'), ('METARFill_Logo.png', '.'), ('METARFill_Logo.ico', '.'), ('user-icon.jpg', '.')],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='METARFill',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon=['METARFill_Logo.ico'],
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='METARFill',
)
