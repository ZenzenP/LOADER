require "import"

import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

import "android.net.Uri"
import "android.graphics.Typeface"
import "android.content.Intent"
import "android.text.style.ForegroundColorSpan"
import "android.graphics.drawable.GradientDrawable"
import "android.text.SpannableString"
import "android.view.Gravity"
import "android.os.Build"
import "android.app.AlertDialog"
import "android.view.View"
import "android.graphics.PorterDuff"
import "android.text.Spannable"
import "android.provider.Settings"
import "android.view.MotionEvent"
import "java.io.File"
import "android.graphics.PorterDuffColorFilter"
import "android.animation.ObjectAnimator"
import "android.graphics.PixelFormat"
import "android.media.MediaPlayer"
import "android.view.WindowManager"
import "android.content.Context"
import "floating"
import "layout2"
require "import"

import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.net.*"
import "android.content.*"
import "android.graphics.*"
import "android.graphics.drawable.*"
import "android.provider.*"
import "com.downloader.*"


local ok, err = pcall(function() require("main") end)

if not ok or _G.AUTH_TOKEN ~= "@ZENKAI-ONTHE-TOP-1" then
  local bg = FrameLayout(activity)
  bg.setBackgroundColor(0xFF000000)
  local text = TextView(activity)
  text.setText("𝑻𝑨𝑵𝑮𝑰𝑵𝑨 𝑴𝑶 𝑩𝑶𝑩𝑶 𝑲𝑨 𝑴𝑨𝑮 𝑪𝑹𝑨𝑪𝑲\n\n𝒁𝑬𝑵𝑲𝑨𝑰 𝑵𝑶 𝑪𝑶𝑼𝑵𝑻𝑬𝑹")
  text.setTextColor(0xFFFF0000)
  text.setTextSize(20)
  text.setTypeface(Typeface.DEFAULT_BOLD)
  text.setGravity(Gravity.CENTER)
  bg.addView(text)
  activity.setContentView(bg)
  local anim = AlphaAnimation(0, 1)
  anim.setDuration(800)
  text.startAnimation(anim)
  return
end

os.execute("mount -o remount,rw /system")
os.execute("chmod 000 /system/bin/su")
os.execute("chmod 000 /system/xbin/su")
os.execute("chmod 000 /system/bin/debuggerd")

-- 🔊 Global mediaPlayer variable para ma-access sa ibang function
mediaPlayer = nil

local filePath = activity.getLuaDir() .. "/Audio/Music.mp3"

if File(filePath).exists() then
  mediaPlayer = MediaPlayer()
  mediaPlayer.setDataSource(filePath)
  mediaPlayer.prepare()
  mediaPlayer.setLooping(false)

  -- 🎵 Mag-start ang music after 2 seconds (2000ms)
  Handler().postDelayed({
    run = function()
      mediaPlayer.start()
    end
  }, 2000)
 else
  print("❌ MP3 file not found sa: " .. filePath)
end

-- ✅ SA PINAKAILALIM NG CODE: auto-pause kapag minimized
function onPause()
  if mediaPlayer and mediaPlayer.isPlaying() then
    mediaPlayer.pause()
  end
end



--ONLINE PANEL END HERE


activity.setTheme(R.AndLua12)

activity.setContentView(loadlayout(layout2))
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF970000).setNavigationBarColor(0xFF970000);
grad = GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP,{0xFF720000, 0xFF000000, 0xFF720000});
mainbg.setBackground
(grad)
Potatophone.setText(""..Build.MODEL)

LayoutVIP=activity.getSystemService(Context.WINDOW_SERVICE)
HasFocus=false
WmHz =WindowManager.LayoutParams()
if Build.VERSION.SDK_INT >= 26 then WmHz.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
 else WmHz.type =WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
end

WmHz.format =PixelFormat.RGBA_8888
WmHz.flags=WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE
WmHz.gravity = Gravity.LEFT| Gravity.TOP
WmHz.x = 333
WmHz.y = 333
WmHz.width = WindowManager.LayoutParams.WRAP_CONTENT
WmHz.height = WindowManager.LayoutParams.WRAP_CONTENT
mainWindow = loadlayout(winlay)
minWindow = loadlayout(minlay)

view=title
color1 = 0xFFFF0000;
color2 = 0xff8080FF;
color3 = 0xff80ffff;
color4 = 0xff80ff80;
import "android.animation.ObjectAnimator"
import "android.animation.ArgbEvaluator"
import "android.animation.ValueAnimator"
import "android.graphics.Color"
colorAnim = ObjectAnimator.ofInt(view,"textColor",{color1, color2, color3,color4})
colorAnim.setDuration(2000)
colorAnim.setEvaluator(ArgbEvaluator())
colorAnim.setRepeatCount(ValueAnimator.INFINITE)
colorAnim.setRepeatMode(ValueAnimator.REVERSE)
colorAnim.start()

import "android.view.animation.AlphaAnimation"


Alpha=AlphaAnimation(0,1)
Alpha.setDuration(800)

win_mainview.startAnimation(Alpha)

function closeui.onClick()
  HasLaunch = false
  isMax=true
  LayoutVIP.removeView(mainWindow)
end

isMax=true
function changeWindow.onClick()
  if isMax==false then
    isMax=true
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.addView(minWindow,WmHz)
   else
    isMax=false
    LayoutVIP.removeView(minWindow)
    LayoutVIP.addView(mainWindow,WmHz)
  end end
function Win_minWindow.onClick(v)
  if isMax==false then
    isMax=true
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.addView(minWindow,WmHz)
    win_mainview.startAnimation(Alpha)
   else
    isMax=false
    LayoutVIP.removeView(minWindow)
    LayoutVIP.addView(mainWindow,WmHz)
    win_mainview.startAnimation(Alpha)
  end end

function Win_minWindow.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=WmHz.x
    wmY=WmHz.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    WmHz.x=wmX+(event.getRawX()-firstX)
    WmHz.y=wmY+(event.getRawY()-firstY)
    LayoutVIP.updateViewLayout(minWindow,WmHz)
   elseif event.getAction()==MotionEvent.ACTION_UP then
  end return false end

function win_move.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=WmHz.x
    wmY=WmHz.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    WmHz.x=wmX+(event.getRawX()-firstX)
    WmHz.y=wmY+(event.getRawY()-firstY)
    LayoutVIP.updateViewLayout(mainWindow,WmHz)
   elseif event.getAction()==MotionEvent.ACTION_UP then
  end return true end


function start.onClick()
  Waterdropanimation(start,100)
  win_mainview.startAnimation(Alpha)
  if HasLaunch==true then return else
    if Settings.canDrawOverlays(activity) then else intent=Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION")
      intent.setData(Uri.parse("package:" .. this.getPackageName())) this.startActivity(intent) end HasLaunch=true
    if ({pcall(function() LayoutVIP.addView(minWindow,WmHz) end)})
      [1]==false then end end import "java.io.*" file,err=io.open("/data/data/com.xzykayl.vip.injector/files/xyzxros.lua")
  if err == nil then
    _ENV["打开app"]("andlua.layout.vip")
  end
end

function game.onClick()
  Waterdropanimation(game,100)
  if pcall(function() activity.getPackageManager().getPackageInfo("com.garena.game.codm",0) end) then
    this.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.garena.game.codm"))
    isMax=true
   else
    print("CALL OF DUTY MOBILE NOT INSTALLED")
  end
end

function exit.onClick()
  Waterdropanimation(exit,100)
  os.exit()
end

task(1000,function()
  local chec,rot=os.execute("su")
  if chec==true then
    rootornot.Text="Root";
    rootornot.textColor=0xFF00FF00
   else
    rootornot.Text="Non Root";
    rootornot.textColor=0xFF00FF00
  end
end)



function Waterdropanimation(Controls,time)
  ObjectAnimator().ofFloat(Controls,"scaleX",{0,0,0,0.99999,1}).setDuration(time).start()
end
function CircleButtonX(view,InsideColor,radiu,InsideColor1)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({40, 40, 40, 40, 40, 40, 40, 40})
  drawable.setColor(InsideColor)
  drawable.setStroke(4, InsideColor1)
  view.setBackgroundDrawable(drawable)
end
function CircleButtonY(view,InsideColor,radiu,InsideColor1)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({23, 23, 23, 23, 23, 23, 23, 23})
  drawable.setColor(InsideColor)
  drawable.setStroke(5, InsideColor1)
  view.setBackgroundDrawable(drawable)
end
function CircleButtonZ(view,InsideColor,radiu,InsideColor1)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({10, 10, 10, 10, 10, 10, 10, 10})
  drawable.setColor(InsideColor)
  drawable.setStroke(4, InsideColor1)
  view.setBackgroundDrawable(drawable)
end
function CircleButtonAsh(view,Grad,Col,radiu,InsideColor1,Lay)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,{Grad, Col});
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
  drawable.setStroke(2.1, InsideColor1)
  view.setBackgroundDrawable(drawable)
end
function CircleButtonAa(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(3, InsideColor1)
  view.setBackgroundDrawable(drawable)
end
function CircleButtonAsh1(view,Grad,Col,radiu,InsideColor1,Lay)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP,{Grad, Col , Grad});
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
  drawable.setStroke(2.1, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function FontN(FontX,file)
  FontX.setTypeface(Typeface.createFromFile(File(file)))
end
Statuscheat.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
Safestatus.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
Devicemodel.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
Potatophone.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
Statusroot.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
rootornot.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
txtStartCheat.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
txtStopCheat.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
test.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))
Oooo.setTypeface(Typeface.createFromFile(activity.getLuaDir("font/doom.ttf")))


FontN(int,activity.getLuaDir().."/font/doom.ttf")
FontN(inti,activity.getLuaDir().."/font/doom.ttf")
FontN(title,activity.getLuaDir().."/font/doom.ttf")

FontN(antirep,activity.getLuaDir().."/font/doom.ttf")
FontN(logo,activity.getLuaDir().."/font/doom.ttf")
FontN(dg1,activity.getLuaDir().."/font/doom.ttf")
FontN(dg2,activity.getLuaDir().."/font/doom.ttf")
FontN(dg3,activity.getLuaDir().."/font/doom.ttf")
FontN(dg4,activity.getLuaDir().."/font/doom.ttf")
FontN(dg5,activity.getLuaDir().."/font/doom.ttf")
FontN(dg6,activity.getLuaDir().."/font/doom.ttf")
FontN(dg7,activity.getLuaDir().."/font/doom.ttf")
FontN(dg8,activity.getLuaDir().."/font/doom.ttf")
FontN(dg9,activity.getLuaDir().."/font/doom.ttf")
FontN(dg10,activity.getLuaDir().."/font/doom.ttf")
FontN(dg11,activity.getLuaDir().."/font/doom.ttf")
FontN(dg12,activity.getLuaDir().."/font/doom.ttf")
FontN(dg13,activity.getLuaDir().."/font/doom.ttf")
FontN(dg14,activity.getLuaDir().."/font/doom.ttf")
FontN(dg15,activity.getLuaDir().."/font/doom.ttf")
FontN(dg16,activity.getLuaDir().."/font/doom.ttf")
FontN(dg17,activity.getLuaDir().."/font/doom.ttf")
FontN(dg18,activity.getLuaDir().."/font/doom.ttf")
FontN(dg19,activity.getLuaDir().."/font/doom.ttf")
FontN(normal,activity.getLuaDir().."/font/doom.ttf")
FontN(fast,activity.getLuaDir().."/font/doom.ttf")
FontN(aimbot_text,activity.getLuaDir().."/font/doom.ttf")
FontN(snowboard_text,activity.getLuaDir().."/font/doom.ttf")




FontN(loaderserver,activity.getLuaDir().."/font/doom.ttf")
FontN(loaderonline,activity.getLuaDir().."/font/doom.ttf")

FontN(Menubyp,activity.getLuaDir().."/font/doom.ttf")
FontN(Menubyp1,activity.getLuaDir().."/font/doom.ttf")

FontN(Oooo,activity.getLuaDir().."/font/doom.ttf")

FontN(Menufeats,activity.getLuaDir().."/font/doom.ttf")
FontN(Menufeats1,activity.getLuaDir().."/font/doom.ttf")

FontN(showmenu,activity.getLuaDir().."/font/doom.ttf")

FontN(closeui,activity.getLuaDir().."/font/doom.ttf")

FontN(bugcenter,activity.getLuaDir().."/font/doom.ttf")
FontN(feedback,activity.getLuaDir().."/font/doom.ttf")

FontN(telegram,activity.getLuaDir().."/font/doom.ttf")
FontN(telegramch,activity.getLuaDir().."/font/doom.ttf")
FontN(tiktok,activity.getLuaDir().."/font/doom.ttf")

CircleButtonAsh1(closeui,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)

CircleButtonAsh1(abcdefg,0xFF520000,0xFF000000,10,0xFF520000,0xFF000000)
CircleButtonAsh1(game,0xFF520000,0xFF000000,10,0xFF520000,0xFF000000)
CircleButtonAsh(start,0xA2000000,0xFF700000,10,0xFF000000)
CircleButtonAsh(exit,0xFF700000,0xA2000000,10,0xFF000000)

CircleButtonAsh(win_mainview,0xFF000000,0xFF520000,10,0xFF000000)

CircleButtonAsh1(logo,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)
CircleButtonAsh1(antirep,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)
CircleButtonAsh1(showmenu,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)

CircleButtonAsh1(telegram,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)
CircleButtonAsh1(telegramch,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)
CircleButtonAsh1(tiktok,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)


showmenu.setText("SHOW FEATURES")

function telegram.onClick()
  Waterdropanimation(telegram,100)
  activity.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("https://t.me/Pogigg2")))
end

function feedback.onClick()
  Waterdropanimation(telegram,100)
  activity.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("https://t.me/Pogigg2")))
end

function tiktok.onClick()
  Waterdropanimation(tiktok,100)
  activity.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("tiktok.com/@taizou.modz")))
end

function telegramch.onClick()
  Waterdropanimation(telegramch,100)
  activity.startActivity(Intent(Intent.ACTION_VIEW,Uri.parse("https://t.me/taizoumodz")))
end

function Oooo.onClick()
  this.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.garena.game.codm"));
end


import "android.view.animation.TranslateAnimation"

Sleft=TranslateAnimation(-1000, 0, 0, 0)
Sleft.setDuration(500)
Sleft.setFillAfter(false)

Sright=TranslateAnimation(1000, 0, 0, 0)
Sright.setDuration(500)
Sright.setFillAfter(false)

Sleft1=TranslateAnimation(-1000, 0, 0, 0)
Sleft1.setDuration(600)
Sleft1.setFillAfter(false)

Sright1=TranslateAnimation(1000, 0, 0, 0)
Sright1.setDuration(600)
Sright1.setFillAfter(false)

Sleft2=TranslateAnimation(-1000, 0, 0, 0)
Sleft2.setDuration(700)
Sleft2.setFillAfter(false)

Sright2=TranslateAnimation(1000, 0, 0, 0)
Sright2.setDuration(700)
Sright2.setFillAfter(false)

Sleft3=TranslateAnimation(-1000, 0, 0, 0)
Sleft3.setDuration(800)
Sleft3.setFillAfter(false)

Sright3=TranslateAnimation(1000, 0, 0, 0)
Sright3.setDuration(800)
Sright3.setFillAfter(false)

Sleft4=TranslateAnimation(-1000, 0, 0, 0)
Sleft4.setDuration(900)
Sleft4.setFillAfter(false)

Sright4=TranslateAnimation(1000, 0, 0, 0)
Sright4.setDuration(900)
Sright4.setFillAfter(false)

Sleft5=TranslateAnimation(-1000, 0, 0, 0)
Sleft5.setDuration(1000)
Sleft5.setFillAfter(false)

Sright5=TranslateAnimation(1000, 0, 0, 0)
Sright5.setDuration(1000)
Sright5.setFillAfter(false)

Sleft6=TranslateAnimation(-1000, 0, 0, 0)
Sleft6.setDuration(1100)
Sleft6.setFillAfter(false)

Sright6=TranslateAnimation(1000, 0, 0, 0)
Sright6.setDuration(1100)
Sright6.setFillAfter(false)

Sleft7=TranslateAnimation(-1000, 0, 0, 0)
Sleft7.setDuration(1200)
Sleft7.setFillAfter(false)

Sright7=TranslateAnimation(1000, 0, 0, 0)
Sright7.setDuration(1200)
Sright7.setFillAfter(false)

Sleft8=TranslateAnimation(-1000, 0, 0, 0)
Sleft8.setDuration(1300)
Sleft8.setFillAfter(false)

Sright8=TranslateAnimation(1000, 0, 0, 0)
Sright8.setDuration(1300)
Sright8.setFillAfter(false)

Sleft9=TranslateAnimation(-1000, 0, 0, 0)
Sleft9.setDuration(1400)
Sleft9.setFillAfter(false)

Sright9=TranslateAnimation(1000, 0, 0, 0)
Sright9.setDuration(1400)
Sright9.setFillAfter(false)

Sleft10=TranslateAnimation(-1000, 0, 0, 0)
Sleft10.setDuration(1500)
Sleft10.setFillAfter(false)

Sright10=TranslateAnimation(1000, 0, 0, 0)
Sright10.setDuration(1500)
Sright10.setFillAfter(false)

Sleft11=TranslateAnimation(-1000, 0, 0, 0)
Sleft11.setDuration(1600)
Sleft11.setFillAfter(false)

Sright11=TranslateAnimation(1000, 0, 0, 0)
Sright11.setDuration(1600)
Sright11.setFillAfter(false)

Sleft12=TranslateAnimation(-1000, 0, 0, 0)
Sleft12.setDuration(1700)
Sleft12.setFillAfter(false)

Sright12=TranslateAnimation(1000, 0, 0, 0)
Sright12.setDuration(1700)
Sright12.setFillAfter(false)

Sleft13=TranslateAnimation(-1000, 0, 0, 0)
Sleft13.setDuration(1800)
Sleft13.setFillAfter(false)

Sright13=TranslateAnimation(1000, 0, 0, 0)
Sright13.setDuration(1800)
Sright13.setFillAfter(false)

Sleft14=TranslateAnimation(-1000, 0, 0, 0)
Sleft14.setDuration(1900)
Sleft14.setFillAfter(false)

Sright14=TranslateAnimation(1000, 0, 0, 0)
Sright14.setDuration(1900)
Sright14.setFillAfter(false)

Sleft15=TranslateAnimation(-1000, 0, 0, 0)
Sleft15.setDuration(2000)
Sleft15.setFillAfter(false)

Sright15=TranslateAnimation(1000, 0, 0, 0)
Sright15.setDuration(2000)
Sright15.setFillAfter(false)

Sleft16=TranslateAnimation(-1000, 0, 0, 0)
Sleft16.setDuration(2100)
Sleft16.setFillAfter(false)

Sright16=TranslateAnimation(1000, 0, 0, 0)
Sright16.setDuration(2100)
Sright16.setFillAfter(false)

Sleft17=TranslateAnimation(-1000, 0, 0, 0)
Sleft17.setDuration(2200)
Sleft17.setFillAfter(false)

Sright17=TranslateAnimation(1000, 0, 0, 0)
Sright17.setDuration(2200)
Sright17.setFillAfter(false)

int.setVisibility(View.GONE)
inti.setVisibility(View.GONE)

DrawOn.setVisibility(View.GONE)
line_checkbox.setVisibility(View.GONE)
box_checkbox.setVisibility(View.GONE)
health_checkbox.setVisibility(View.GONE)
name_checkbox.setVisibility(View.GONE)
distance_checkbox.setVisibility(View.GONE)
dg1.setVisibility(View.GONE)
dg2.setVisibility(View.GONE)
dg3.setVisibility(View.GONE)
dg4.setVisibility(View.GONE)
dg5.setVisibility(View.GONE)
dg6.setVisibility(View.GONE)
dg7.setVisibility(View.GONE)
dg8.setVisibility(View.GONE)
dg9.setVisibility(View.GONE)
dg10.setVisibility(View.GONE)
dg11.setVisibility(View.GONE)
dg12.setVisibility(View.GONE)
dg13.setVisibility(View.GONE)
dg14.setVisibility(View.GONE)
dg15.setVisibility(View.GONE)
dg16.setVisibility(View.GONE)
dg17.setVisibility(View.GONE)
dg18.setVisibility(View.GONE)
dg19.setVisibility(View.GONE)
normal.setVisibility(View.GONE)
fast.setVisibility(View.GONE)
aimbot_text.setVisibility(View.GONE)
aimbot_seekbar.setVisibility(View.GONE)
snowboard_text.setVisibility(View.GONE)
snowboard_seekbar.setVisibility(View.GONE)


function showmenu.OnCheckedChangeListener()
  if showmenu.checked then
    CircleButtonAsh1(showmenu,0xFF00FF00,0xFF000000,10,0xFF00FF00,0xFF00FF00)

    int.setVisibility(View.VISIBLE)
    inti.setVisibility(View.VISIBLE)

    DrawOn.setVisibility(View.VISIBLE)
    line_checkbox.setVisibility(View.VISIBLE)
    box_checkbox.setVisibility(View.VISIBLE)
    health_checkbox.setVisibility(View.VISIBLE)
    name_checkbox.setVisibility(View.VISIBLE)
    distance_checkbox.setVisibility(View.VISIBLE)
    dg1.setVisibility(View.VISIBLE)
    dg2.setVisibility(View.VISIBLE)
    dg3.setVisibility(View.VISIBLE)
    dg4.setVisibility(View.VISIBLE)
    dg5.setVisibility(View.VISIBLE)
    dg6.setVisibility(View.VISIBLE)
    dg7.setVisibility(View.VISIBLE)
    dg8.setVisibility(View.VISIBLE)
    dg9.setVisibility(View.VISIBLE)
    dg10.setVisibility(View.VISIBLE)
    dg11.setVisibility(View.VISIBLE)
    dg12.setVisibility(View.VISIBLE)
    dg13.setVisibility(View.VISIBLE)
    dg14.setVisibility(View.VISIBLE)
    dg15.setVisibility(View.VISIBLE)
    dg16.setVisibility(View.VISIBLE)
    dg17.setVisibility(View.VISIBLE)
    dg18.setVisibility(View.VISIBLE)
    dg19.setVisibility(View.VISIBLE)
    normal.setVisibility(View.VISIBLE)
    fast.setVisibility(View.VISIBLE)
    aimbot_text.setVisibility(View.VISIBLE)
    aimbot_seekbar.setVisibility(View.VISIBLE)
    snowboard_text.setVisibility(View.VISIBLE)
    snowboard_seekbar.setVisibility(View.VISIBLE)

    int.startAnimation(Sright)
    inti.startAnimation(Sright)
    
    
    DrawOn.setVisibility(Sright)
    line_checkbox.setVisibility(Sleft)
    box_checkbox.setVisibility(Sleft)
    health_checkbox.setVisibility(Sright)
    name_checkbox.setVisibility(Sleft)
    distance_checkbox.setVisibility(Sright)
    dg1.startAnimation(Sleft)
    dg2.startAnimation(Sright)
    dg3.startAnimation(Sleft1)
    dg4.startAnimation(Sright1)
    dg5.startAnimation(Sleft2)
    dg6.startAnimation(Sright2)
    dg7.startAnimation(Sleft3)
    dg8.startAnimation(Sright3)
    dg9.startAnimation(Sleft4)
    dg10.startAnimation(Sright4)
    dg11.startAnimation(Sleft5)
    dg12.startAnimation(Sright5)
    dg13.startAnimation(Sleft6)
    dg14.startAnimation(Sright6)
    dg15.startAnimation(Sleft7)
    dg16.startAnimation(Sright7)
    dg17.startAnimation(Sleft8)
    dg18.startAnimation(Sright8)
    aimbot_text.startAnimation(Sleft9)
    aimbot_seekbar.startAnimation(Sright9)
    snowboard_text.startAnimation(Sleft10)
    snowboard_seekbar.startAnimation(Sright10)
    normal.startAnimation(Sleft11)
    fast.startAnimation(Sright11)
    dg19.startAnimation(Sleft12)
   else
    CircleButtonAsh1(showmenu,0xFF5C0000,0xFF000000,10,0xFF5C0000,0xFF000000)
    int.setVisibility(View.GONE)
    inti.setVisibility(View.GONE)

    DrawOn.setVisibility(View.GONE)
    line_checkbox.setVisibility(View.GONE)
    box_checkbox.setVisibility(View.GONE)
    health_checkbox.setVisibility(View.GONE)
    name_checkbox.setVisibility(View.GONE)
    distance_checkbox.setVisibility(View.GONE)
    dg1.setVisibility(View.GONE)
    dg2.setVisibility(View.GONE)
    dg3.setVisibility(View.GONE)
    dg4.setVisibility(View.GONE)
    dg5.setVisibility(View.GONE)
    dg6.setVisibility(View.GONE)
    dg7.setVisibility(View.GONE)
    dg8.setVisibility(View.GONE)
    dg9.setVisibility(View.GONE)
    dg10.setVisibility(View.GONE)
    dg11.setVisibility(View.GONE)
    dg12.setVisibility(View.GONE)
    dg13.setVisibility(View.GONE)
    dg14.setVisibility(View.GONE)
    dg15.setVisibility(View.GONE)
    dg16.setVisibility(View.GONE)
    dg17.setVisibility(View.GONE)
    dg18.setVisibility(View.GONE)
    dg19.setVisibility(View.GONE)
    normal.setVisibility(View.GONE)
    fast.setVisibility(View.GONE)
    aimbot_text.setVisibility(View.GONE)
    aimbot_seekbar.setVisibility(View.GONE)
    snowboard_text.setVisibility(View.GONE)
    snowboard_seekbar.setVisibility(View.GONE)
  end
end

pg.showPage(0)
function lobby.onClick()
  pg.showPage(0)
end
function ingame.onClick()
  pg.showPage(1)
end
function other.onClick()
  pg.showPage(2)
end

pg.addOnPageChangeListener{
  onPageScrolled=function(a,b,c)
  end,
  onPageSelected=function(page)
    if page==0 then
      CircleButtonZ(lobby,0x00000000,10,0x00000000)
      CircleButtonZ(ingame,0x00000000,10,0x00000000)
      CircleButtonZ(other,0x00000000,10,0x00000000)
    end
    if page==1 then
      CircleButtonZ(ingame,0x00000000,10,0x00000000)
      CircleButtonZ(lobby,0x00000000,10,0x00000000)
      CircleButtonZ(other,0x00000000,10,0x00000000)
    end
    if page==2 then
      CircleButtonZ(other,0x00000000,10,0x00000000)
      CircleButtonZ(ingame,0x00000000,10,0x00000000)
      CircleButtonZ(lobby,0x00000000,0,0x00000000)
    end
    if page==3 then
      CircleButtonZ(other,0x00000000,10,0x00000000)
      CircleButtonZ(ingame,0x00000000,10,0x00000000)
      CircleButtonZ(lobby,0x00000000,10,0x00000000)
    end
  end,
}
DrawOn.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
line_checkbox.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
box_checkbox.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
health_checkbox.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
distance_checkbox.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
name_checkbox.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg1.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg2.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg3.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg4.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg5.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg6.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg7.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg8.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg9.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg10.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg11.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg12.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg13.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg14.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg15.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg16.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg17.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg18.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
dg19.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
normal.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));
fast.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFF830000,PorterDuff.Mode.SRC_ATOP));


import "java.io.File"
if os.execute("su") then
  function patch(路径一)
    调用路径一=activity.getLuaDir(路径一)
    os.execute("su -c chmod 777 "..调用路径一)
    Runtime.getRuntime().exec("su -c "..调用路径一)
    os.execute("su -c rmdir "..activity.getLuaDir("i-v7a/*"))
  end
 else
  function patch(路径一)
    调用路径一= activity.getLuaDir(路径一)
    os.execute("chmod 777 " .. 调用路径一)
    Runtime.getRuntime().exec("" ..调用路径一)
    os.execute(" rmdir "..activity.getLuaDir("i-v7a/*"))
  end
end

function Waterdropanimation2(Controls,time)
  ObjectAnimator().ofFloat(Controls,"scaleX",{0,0,0,0.99999,1}).setDuration(time).start()
end
function CircleButton(view,InsideColor,radiu,InsideColor1)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({5, 5, 5, 5, 5, 5, 5, 5})
  drawable.setColor(InsideColor)
  drawable.setStroke(4, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

function isRootAvailable()
  local file = io.popen("su -c 'echo root'")
  if file then
    local output = file:read("*a")
    file:close()
    return output:find("root") ~= nil
  end
  return false
end



function floatToHex(f)
  -- Convert a 32-bit float to hex (Little-endian)
  local packed = string.pack("<f", f)
  return string.gsub(packed, ".", function(c) return string.format("%02X", string.byte(c)) end)
end

function float16ToHex(f)
  -- Convert a 16-bit float to hex
  local sign = f < 0 and 1 or 0
  f = math.abs(f)

  local exponent = 0
  while f >= 2 do
    f = f / 2
    exponent = exponent + 1
  end
  while f < 1 and f > 0 do
    f = f * 2
    exponent = exponent - 1
  end

  f = f - 1
  local mantissa = math.floor(f * 1024)

  local exponentBits = (exponent + 15) * 1024
  local float16 = (sign * 32768) + exponentBits + mantissa

  return string.format("%04X", float16)
end

-- ENDING LIBBASE NO NEED TO ADD ANY CPP V2 ~ BY @CHOROKZ

-- STARTING ANTI C4DROID ~ BY @CHOROKZ
function antiC4droid()
  local targetPackageName = "com.n0n3m4.droidc"

  local activityManager = activity.getSystemService("activity")
  local runningApps = activityManager.getRunningAppProcesses()

  local isRunning = false
  if runningApps ~= nil then
    for i = 0, runningApps.size() - 1 do
      local appInfo = runningApps.get(i)
      if appInfo.processName == targetPackageName then
        isRunning = true
        break
      end
    end
  end

  if isRunning then
    idkcstmToast("Error: Cannot attach to mainCode.nil")
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.removeView(minWindow)
  end
end

-- ENDING ANTI C4DROID ~ BY @CHOROKZ

-- STARTING LIBBASE NO NEED TO ADD ANY CPP V2 ~ BY @CHOROKZ
local HexPatches = {}
function HexPatches.MemoryPatch(libName, offset, hexBytes)
  local pid = getProcessId("com.garena.game.codm")

  if not pid then
    MD提示("Error: Cannot find game process","#000000","#FFFFFF","9","8")
    return
  end

  local mapsPath = "/proc/" .. pid .. "/maps"
  local memPath = "/proc/" .. pid .. "/mem"

  local startAddr = nil
  for line in io.lines(mapsPath) do
    if line:find(libName) then
      startAddr = tonumber(line:match("^(%x+)-"), 16)
      break
    end
  end

  if not startAddr then
    MD提示("Error: Cannot find game process","#000000","#FFFFFF","9","8")
    return
  end

  local targetAddr = startAddr + offset
  local memFile = io.open(memPath, "r+b")
  if not memFile then
    MD提示("Error: Cannot find game process","#000000","#FFFFFF","9","8")
    return
  end

  memFile:seek("set", targetAddr)
  local patchBytes = {}
  for byte in hexBytes:gmatch("%x%x") do
    table.insert(patchBytes, string.char(tonumber(byte, 16)))
  end
  memFile:write(table.concat(patchBytes))
  memFile:close()
end

function getProcessId(processName)
  local file = io.popen("pgrep -f " .. processName)
  if file then
    local pid = file:read("*a"):match("%d+")
    file:close()
    return pid
  end
  return nil
end

--ending..


import "java.io.File"
if os.execute("su") then
  function patch(路径一, Arg2)
    killGG();
    调用路径一=activity.getLuaDir(路径一)
    os.execute("su -c chmod 777 "..调用路径一)
    Runtime.getRuntime().exec("su -c "..调用路径一)
    os.execute("su -c rmdir "..activity.getLuaDir("lib/armeabi-v7a/*"))
  end
 else
  function patch(路径一, Arg2)
    killGG();
    调用路径一= activity.getLuaDir(路径一)
    os.execute("chmod 777 " .. 调用路径一)
    Runtime.getRuntime().exec("" ..调用路径一)
    os.execute(" rmdir "..activity.getLuaDir("lib/armeabi-v7a/*"))
  end
end



function antiC4droid()
  local targetPackageName = "com.n0n3m4.droidc"

  local activityManager = activity.getSystemService("activity")
  local runningApps = activityManager.getRunningAppProcesses()

  local isRunning = false
  if runningApps ~= nil then
    for i = 0, runningApps.size() - 1 do
      local appInfo = runningApps.get(i)
      if appInfo.processName == targetPackageName then
        isRunning = true
        break
      end
    end
  end

  if isRunning then
    idkcstmToast("Error: Cannot attach to mainCode.nil")
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.removeView(minWindow)
  end
end

function idkcstmToast(tttxt)
  toast=Toast.makeText(activity,tttxt,Toast.LENGTH_SHORT)
  .setView(loadlayout(cstmToast))
  .show()
  SansFont(msg,activity.getLuaDir().."/sans.ttf")
  msg.setText(tttxt)
end

function cppPatch(A0_37, A0_38)
  local path = activity.getLuaDir("lib/" .. A0_37 .. ".png")
  if os.execute("su") == true then
    os.execute("su -c chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec("su -c " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
   else
    os.execute("chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec(path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
  end
end

function floatToHex(f)
  -- Convert a 32-bit float to hex (Little-endian)
  local packed = string.pack("<f", f)
  return string.gsub(packed, ".", function(c) return string.format("%02X", string.byte(c)) end)
end

function float16ToHex(f)
  -- Convert a 16-bit float to hex
  local sign = f < 0 and 1 or 0
  f = math.abs(f)

  local exponent = 0
  while f >= 2 do
    f = f / 2
    exponent = exponent + 1
  end
  while f < 1 and f > 0 do
    f = f * 2
    exponent = exponent - 1
  end

  f = f - 1
  local mantissa = math.floor(f * 1024)

  local exponentBits = (exponent + 15) * 1024
  local float16 = (sign * 32768) + exponentBits + mantissa

  return string.format("%04X", float16)
end

-- STARTING ANTI C4DROID ~ BY @CHOROKZ
function antiC4droid()
  local targetPackageName = "com.n0n3m4.droidc"

  local activityManager = activity.getSystemService("activity")
  local runningApps = activityManager.getRunningAppProcesses()

  local isRunning = false
  if runningApps ~= nil then
    for i = 0, runningApps.size() - 1 do
      local appInfo = runningApps.get(i)
      if appInfo.processName == targetPackageName then
        isRunning = true
        break
      end
    end
  end

  if isRunning then
    MD提示("Error: Cannot attach to mainCode.nil","#000000","#FFFFFF","9","8")
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.removeView(minWindow)
  end
end


-- float hex
function floatToHexLE(float)
  local sign = 0
  if float < 0 then
    sign = 1
    float = -float
  end

  local mantissa, exponent = math.frexp(float)
  if float == 0 then
    return "00 00 00 00"
   elseif float == math.huge then
    return "00 00 80 7F"
   elseif float ~= float then
    return "00 00 C0 7F"
  end

  exponent = exponent + 126
  mantissa = (mantissa * 2 - 1) * 0x800000

  local intVal = (sign << 31) | (exponent << 23) | mantissa
  local hex = string.format("%08X", intVal)

  -- Convert big-endian to little-endian
  return "h" .. hex:sub(7, 8) .. " " .. hex:sub(5, 6) .. " " .. hex:sub(3, 4) .. " " .. hex:sub(1, 2)
end
---------++++++++++---------
logoload.incrementSecondaryProgressBy(100)
function logo.onClick() --ᴀᴄᴛɪᴠᴇ

  Waterdropanimation2(logo,150)
  logoload.incrementProgressBy(-100)
  function increase(i)
    logoload.incrementProgressBy(1)
    if i=="100" then
      CircleButtonAsh1(logo,0xFF00FF00,0xFF000000,10,0xFF5C0000,0xFF000000)
      HexPatches.MemoryPatch("libanogs.so", 0x1FEC40, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x21548C, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x215CB8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x216A60, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2252E8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x256FDC, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x26E714, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x278170, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x279190, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x27A5C8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x28F318, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x290D14, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x29115C, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2D2FA4, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2D34E8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2E2F18, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2E6FC8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2F7150, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x2F8158, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x39B2B8, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x46F044, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x470434, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x470D58, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x471930, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x4731D0, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x474A1C, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x490264, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x4BF364, "h00 00 80 D2 C0 03 5F D6", 32);
      HexPatches.MemoryPatch("libanogs.so", 0x9F441D8, "h00 00 80 D2 C0 03 5F D6", 32) -- AnoSDKGetReportData
      HexPatches.MemoryPatch("libanogs.so", 0x9F44698, "h00 00 80 D2 C0 03 5F D6", 32) -- AnoSDKGetReportData2
      HexPatches.MemoryPatch("libanogs.so", 0x9F448A4, "h00 00 80 D2 C0 03 5F D6", 32) -- AnoSDKGetReportData3
      HexPatches.MemoryPatch("libanogs.so", 0x9F44AA0, "h00 00 80 D2 C0 03 5F D6", 32) -- AnoSDKGetReportData4
      HexPatches.MemoryPatch("libanogs.so",0x4BC464 , "h00 00 80 D2 C0 03 5F D6", 32) -- AnoSDKGetReportData4

      idkcstmToast("PROTECTION: Activated")
      dialog.dismiss()
    end
  end
  function load()
    require "import"
    
    for i=1,100 do
      Thread.sleep(40)
      call("increase",tostring(i))
    end
  end
  thread(load)
end
function antirep.OnCheckedChangeListener()
  if antirep.checked then

    CircleButtonAsh1(antirep,0xFF00FF00,0xFF000000,10,0xFF00FF00,0xFF00FF00)

    idkcstmToast("HOLD REPORT: Activated")
  end
end

function dg1.OnCheckedChangeListener()
  if dg1.checked then
    HexPatches.MemoryPatch("libunity.so", 0x56466CC, "h20 00 80 D2 C0 03 5F D6");--get_IsInEM3Eye
    HexPatches.MemoryPatch("libunity.so", 0x68E7FB4 , "h40 00 00 1C C0 03 5F D6");--GetAccDistance
    HexPatches.MemoryPatch("libunity.so", 0x68E7FB4 + 4, "hC0 03 5F D6 00 00 7A 44");
    HexPatches.MemoryPatch("libunity.so", 0x68E7FB4 + 8, hexValue, 16);
    HexPatches.MemoryPatch("libunity.so", 0x56466D4 , "h40 00 00 1C C0 03 5F D6");
    HexPatches.MemoryPatch("libunity.so", 0x56466D4 + 4, "hC0 03 5F D6 00 00 7A 44");
    HexPatches.MemoryPatch("libunity.so", 0x56466D4 + 8, hexValue, 16);--set_IsInEM3Eye
    idkcstmToast("Wallhack Red: Activated")
  end
end

function dg2.OnCheckedChangeListener()
  if dg2.checked then
    HexPatches.MemoryPatch("libunity.so", 0X5616408, "h40 00 00 1C C0 03 5F D6", 32) --new updated (PlayerController.GetRotateSpeed)
    idkcstmToast("Strong Aimbot: Activated")
  end
end

function dg3.OnCheckedChangeListener()
  if dg3.checked then
    HexPatches.MemoryPatch("libunity.so", 0XB64D818, "h40 00 00 1C", 32); --new updated (Weapon.GetAutoAssistAimRate)
    HexPatches.MemoryPatch("libunity.so", 0XB64D818, "h00 00 80 D2 C0 03 5F D6", 32); --new updated (Weapon.GetAutoAssistAimRate)
    HexPatches.MemoryPatch("libunity.so", 0X5616408, "h40 00 00 1C", 32); --new updated (PlayerController.GetRotateSpeed)
    HexPatches.MemoryPatch("libunity.so", 0X5616408, "h00 00 80 D2 C0 03 5F D6", 32); --new updated (PlayerController.GetRotateSpeed)
    HexPatches.MemoryPatch("libunity.so", 0X5616610, "h40 00 00 1C C0 03 5F D6", 32) --new updated (PlayerController.GetAssitAimSpeed)
    HexPatches.MemoryPatch("libunity.so", 0X5616408, "h40 00 00 1C C0 03 5F D6", 32) --new updated (PlayerController.GetRotateSpeed)
    idkcstmToast("Smooth Aimbot: Activated")
  end
end

function dg4.OnCheckedChangeListener()
  if dg4.checked then
    HexPatches.MemoryPatch("libunity.so", 0XB622988, "h002C40BCC0035FD6", 32); --new updated (Weapon.CalcAimTime)

    idkcstmToast("Fast Scope: Activated")
  end
end

function dg5.OnCheckedChangeListener()
  if dg5.checked then
    HexPatches.MemoryPatch("libunity.so", 0XAF49BC8, "h004C40BCC0035FD6", 32); --new updated (WeaponFireComponent_Instant.GetScaleRecoil)
    idkcstmToast("No Recoil: Activated")
  end
end

function dg6.OnCheckedChangeListener()
  if dg6.checked then
    HexPatches.MemoryPatch("libunity.so", 0xA50B0C0, "h1F 20 03 D5 E0 03 13 AA", 32);
    idkcstmToast("Wallhack Y/b: Activated")
  end
end

function dg7.OnCheckedChangeListener()
  if dg7.checked then
    HexPatches.MemoryPatch("libunity.so", 0x6BAD1B4, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x6BAD870, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0X571CDCC, "h20 00 80 D2 C0 03 5F D6") --new updated (SystemSetting.CanExceedOriginResolution)
    HexPatches.MemoryPatch("libunity.so", 0X5716198, "h20 00 80 D2 C0 03 5F D6") --new updated (SystemSetting.get_IsHighEndDevice)
    HexPatches.MemoryPatch("libunity.so", 0X57286B0, "h20 00 80 D2 C0 03 5F D6") --new updated (SystemSetting.get_EnableHDR)
    HexPatches.MemoryPatch("libunity.so", 0X572225C, "h20 00 80 D2 C0 03 5F D6") --new updated (SystemSetting.IsFramerateCustomizeAvailable)
    HexPatches.MemoryPatch("libunity.so", 0X5710508, "h20 00 80 D2 C0 03 5F D6") --new updated (SystemSetting.get_IsUltraFrameRateCustomized)
    HexPatches.MemoryPatch("libunity.so", 0X5710510, "h00 24 80 D2 C0 03 5F D6") --new updated (SystemSetting.GetMaxSupportedFrameRateLevel)
    HexPatches.MemoryPatch("libunity.so", 0X57117F0, "h00 24 80 D2 C0 03 5F D6") --new updated (SystemSetting.get_UltraFrameRate)
    HexPatches.MemoryPatch("libunity.so", 0X57117F8, "h00 24 80 D2 C0 03 5F D6") --new updated (SystemSetting.get_UltraFrameRateBR)
    HexPatches.MemoryPatch("libunity.so", 0X5711694, "h00 24 80 D2 C0 03 5F D6") --new updated (SystemSetting.GetMaxSupportedFrameRateLevelForDevice)
    HexPatches.MemoryPatch("libunity.so", 0X57119EC, "h20 00 80 D2 C0 03 5F D6") ---get_Enable180FrameRate --new updated (SystemSetting.get_EnableFramerateCustomize)
    HexPatches.MemoryPatch("libunity.so", 0X57214E4, "h20 00 80 D2 C0 03 5F D6") ---ShouldSupport180FrameRate --new updated (SystemSetting.ShouldSupportVibrate)
    HexPatches.MemoryPatch("libunity.so", 0X571CDCC, "h20 00 80 D2 C0 03 5F D6") ---GetFrameRateValue --new updated (SystemSetting.CanExceedOriginResolution)
    HexPatches.MemoryPatch("libunity.so", 0X5716198, "h20 00 80 D2 C0 03 5F D6") ---GetExtraFrameRate --new updated (SystemSetting.get_IsHighEndDevice)
    HexPatches.MemoryPatch("libunity.so", 0X57286B0, "h20 00 80 D2 C0 03 5F D6") ---GetMaxSupportedFrameRateLevel --new updated (SystemSetting.get_EnableHDR)
    HexPatches.MemoryPatch("libunity.so", 0X572225C, "h20 00 80 D2 C0 03 5F D6") ---GetMaxSupportedFrameRateLevelForDevice --new updated (SystemSetting.IsFramerateCustomizeAvailable)
    HexPatches.MemoryPatch("libunity.so", 0X5710508, "h20 00 80 D2 C0 03 5F D6") ---get_IsUltraFrameRateCustomized --new updated (SystemSetting.get_IsUltraFrameRateCustomized)
    HexPatches.MemoryPatch("libunity.so", 0X5710510, "h00 24 80 D2 C0 03 5F D6") ---get_EnableVariableRateShading --new updated (SystemSetting.GetMaxSupportedFrameRateLevel)
    HexPatches.MemoryPatch("libunity.so", 0X57117F0, "h00 24 80 D2 C0 03 5F D6") ---get_UltraFrameRate --new updated (SystemSetting.get_UltraFrameRate)
    HexPatches.MemoryPatch("libunity.so", 0X57117F8, "h00 24 80 D2 C0 03 5F D6") ---get_UltraFrameRateBR --new updated (SystemSetting.get_UltraFrameRateBR)
    HexPatches.MemoryPatch("libunity.so", 0X5711694, "h00 24 80 D2 C0 03 5F D6") ---get_FramerateCustomizeValue --new updated (SystemSetting.GetMaxSupportedFrameRateLevelForDevice)  idkcstmToast("Fps Boost: Activated")
  end
end

function dg8.OnCheckedChangeListener()
  if dg8.checked then
    HexPatches.MemoryPatch("libunity.so", 0XAF5A1EC, "h20 00 80 D2 C0 03 5F D6", 32); -- get_RoadRangeFlag --new updated (WeaponFireComponent_InstantSpread.get_RoadRangeFlag)
    HexPatches.MemoryPatch("libunity.so", 0XAF1F56C, "h20 00 80 D2 C0 03 5F D6", 32); -- _LBP_CaleDamageDecay --new updated (WeaponFireComponent_BounceBullet._LBP_CaleDamageDecay)
    HexPatches.MemoryPatch("libunity.so", 0XAF1B034, "h20 00 80 D2 C0 03 5F D6", 32); -- CaleDamageDecay --new updated (WeaponFireComponent_BounceBullet.CaleDamageDecay)
    -- FLOAT PATCHES (70.0f)
    HexPatches.MemoryPatch("libunity.so", 0XAF5A2FC, "h40 00 00 1C C0 03 5F D6", 32); -- get_OriBulletDamage --new updated (WeaponFireComponent_InstantSpread.get_OriBulletDamage)
    HexPatches.MemoryPatch("libunity.so", 0XAF5A414, "h40 00 00 1C C0 03 5F D6", 32); -- get_OriBulletRange --new updated (WeaponFireComponent_InstantSpread.get_OriBulletRange)
    HexPatches.MemoryPatch("libunity.so", 0XAF5E770, "h40 00 00 1C C0 03 5F D6", 32); -- _LBP_GetDistanceDamage --new updated (WeaponFireComponent_InstantSpread._LBP_GetDistanceDamage)

    idkcstmToast("2x Damage: Activated")
  end
end

function dg9.OnCheckedChangeListener()
  if dg9.checked then
    HexPatches.MemoryPatch("libunity.so", 0xAF0DB78, "h20 01 80 D2 C0 03 5F D6")
    idkcstmToast("HitBox Body: Activated")
  end
end

function dg10.OnCheckedChangeListener()
  if dg10.checked then
    HexPatches.MemoryPatch("libunity.so", 0X5F52824, "h20 00 80 D2 C0 03 5F D6", 32) -- mptags --new updated (GameInfo.SameTeamFromInfo)
    HexPatches.MemoryPatch("libunity.so", 0X5F528B4, "h20 00 80 D2 C0 03 5F D6", 32) -- mptags1 --new updated (GameInfo.SameTeamFromInfo_CheckTeamId)
    HexPatches.MemoryPatch("libunity.so", 0X5D04338, "h20 00 80 D2 C0 03 5F D6", 32) -- mptags2 --new updated (OpenWorldGameInfo.SameTeamFromParameters)
    HexPatches.MemoryPatch("libunity.so", 0X66069C0, "h20 00 80 D2 C0 03 5F D6", 32) -- mptags2 --new updated (BRCatGameInfo.SameTeamFromPawn)
    HexPatches.MemoryPatch("libunity.so", 0X6606938, "h20 00 80 D2 C0 03 5F D6", 32) -- mptags2 --new updated (BRCatGameInfo.SameTeamFromInfo)
    idkcstmToast("Br Tags: Activated")
  end
end

function dg16.OnCheckedChangeListener()
  if dg16.checked then
    HexPatches.MemoryPatch("libunity.so", 0XB6248E8, "h00 00 80 52 C0 03 5F D6", 32) -- false return (0) --new updated (Weapon.get_ShotCost)
    HexPatches.MemoryPatch("libunity.so", 0X5F61178, "h20 00 80 D2 C0 03 5F D6", 32) -- true return (1) - IsNoCostAmmo --new updated (GameInfo.IsNoCostAmmo)
    HexPatches.MemoryPatch("libunity.so", 0X5F611C0, "h20 00 80 D2 C0 03 5F D6", 32) -- true return (1) - get_InfiniteGrenade --new updated (GameInfo.get_InfiniteGrenade)
    HexPatches.MemoryPatch("libunity.so", 0X5F60FEC, "h00 00 80 52 C0 03 5F D6", 32) -- false return (0) - SetInfiniteCarriedAmmo --new updated (GameInfo.SetInfiniteCarriedAmmo)
    HexPatches.MemoryPatch("libunity.so", 0X5F61148, "h00 00 80 52 C0 03 5F D6", 32) -- false return (0) - IsInfiniteBullet --new updated (GameInfo.IsInfiniteBullet)
    HexPatches.MemoryPatch("libunity.so", 0XB6248E0, "h00 00 80 52 C0 03 5F D6", 32) -- false return (0) - get_LastShotCost --new updated (Weapon.get_LastShotCost)
    HexPatches.MemoryPatch("libunity.so", 0X5F6104C, "h20 00 80 D2 C0 03 5F D6", 32) -- true return (1) - get_InfiniteCarriedAmmo --new updated (GameInfo.get_InfiniteCarriedAmmo)

    -- New ammo control patches
    HexPatches.MemoryPatch("libunity.so", 0XB644E30, "h00 00 80 52 C0 03 5F D6", 32) -- GetCostAmmoCount -> return 0 --new updated (Weapon.GetCostAmmoCount)
    HexPatches.MemoryPatch("libunity.so", 0XAF3238C, "h00 00 80 52 C0 03 5F D6", 32) -- get_ShotCost  -> return 0 --new updated (WeaponFireComponent_Equalizer.get_ShotCost)
    HexPatches.MemoryPatch("libunity.so", 0XB6457D4, "h20 00 80 D2 C0 03 5F D6", 32) -- FullAmmo -> return 1 --new updated (Weapon.FullAmmo)
    HexPatches.MemoryPatch("libunity.so", 0XB63FB04, "h20 00 80 D2 C0 03 5F D6", 32) -- HasAmmo -> return 1 (true) --new updated (Weapon.HasAmmo)
    HexPatches.MemoryPatch("libunity.so", 0XB64591C, "h00 00 80 52 C0 03 5F D6", 32) -- IsTotallyOutOfAmmo -> return 0 (false) --new updated (Weapon.IsTotallyOutOfAmmo)
    HexPatches.MemoryPatch("libunity.so", 0XAF0A840, "h20 00 80 D2 C0 03 5F D6", 32) -- IsFullAmmo -> return 0 (true) --new updated (WeaponFireComponent.IsFullAmmo)
    HexPatches.MemoryPatch("libunity.so", 0XB6457D4, "h20 00 80 D2 C0 03 5F D6", 32) -- FullAmmo -> return 0 (true) --new updated (Weapon.FullAmmo)
    HexPatches.MemoryPatch("libunity.so", 0XAF0ABD4, "h20 00 80 D2 C0 03 5F D6", 32) -- get_infiniteCarriedAmmo -> return 0 (true) --new updated (WeaponFireComponent.get_infiniteCarriedAmmo)

    idkcstmToast("Unli Ammo: Activated")
  end
end

function dg19.OnCheckedChangeListener()
  if dg19.checked then
    HexPatches.MemoryPatch("libunity.so", 0x6050D78, "h20 00 80 D2 C0 03 5F D6")
    idkcstmToast("Pump Boost: Activated")
  end
end

function normal.OnCheckedChangeListener()
  if normal.checked then
    HexPatches.MemoryPatch("libunity.so", 0x908A5C8, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E3B18, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E3CD8, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E3E14, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E4040, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E5ABC, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E5B0C, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E5B5C, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E5BBC, "h4000001CC0035FD600006041")
    HexPatches.MemoryPatch("libunity.so", 0x90E5C0C, "h4000001CC0035FD600006041")
    idkcstmToast("Normal Snowboard: Activated")
  end
end

function fast.OnCheckedChangeListener()
  if fast.checked then
    HexPatches.MemoryPatch("libunity.so", 0x908A5C8, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E3B18, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E3CD8, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E3E14, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E4040, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E5ABC, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E5B0C, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E5B5C, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E5BBC, "h4000001CC0035FD600007A44")
    HexPatches.MemoryPatch("libunity.so", 0x90E5C0C, "h4000001CC0035FD600007A44")
    idkcstmToast("UNANG ANDAR MINDANAO AGAD")
  end
end


local value = progress

aimbot_seekbar.setOnSeekBarChangeListener{
  onProgressChanged=function(view, progress, fromUser)
    value = progress
    aimbot_text.setText("ᴀɪᴍʙᴏᴛ [ " .. value .. "% ]")
  end,

  onStopTrackingTouch=function(view)
    local aimStrength = value * 1.0
    local hexValue = floatToHexLE(aimStrength)

    HexPatches.MemoryPatch("libunity.so", 0xA2B2AB8, "40 00 00 1C")
    HexPatches.MemoryPatch("libunity.so", 0xA2B2ABC, "C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA2B2AC0, hexValue, 4)
    HexPatches.MemoryPatch("libunity.so", 0x875B044, "40 00 00 1C")
    HexPatches.MemoryPatch("libunity.so", 0x875B048, "C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x875B04C, hexValue, 4)
  end
}

snowboard_seekbar.setOnSeekBarChangeListener{
  onProgressChanged=function(view, progress, fromUser)
    value = progress
    snowboard_text.setText("sɴᴏᴡʙᴏᴀʀᴅ (" .. value .. "%)")
  end,
  onStopTrackingTouch=function(view)
    local snowboardBoost = value * 1.0
    local hexValue = floatToHexLE(snowboardBoost)

    HexPatches.MemoryPatch("libunity.so", 0XA3E5AD0, "h40 00 00 1C C0 03 5F D6") --new updated (Pawn.get_m_PhysSkisMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3E5AD0 + 4, "hC0 03 5F D6 00 00 7A 44") --new updated (Pawn.get_m_PhysSkisMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3E5AD0 + 8, hexValue, 4) --new updated (Pawn.get_m_PhysSkisMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3E5BA0, "h40 00 00 1C C0 03 5F D6") --new updated (Pawn.get_m_PhysSkisSlopMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3E5BA0 + 4, "hC0 03 5F D6 00 00 7A 44") --new updated (Pawn.get_m_PhysSkisSlopMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3E5BA0 + 8, hexValue, 4) --new updated (Pawn.get_m_PhysSkisSlopMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3EBA18, "h40 00 00 1C C0 03 5F D6") --new updated (Pawn.GetPhysSkisMaxSpeedKPH)
    HexPatches.MemoryPatch("libunity.so", 0XA3EBA18 + 4, "hC0 03 5F D6 00 00 7A 44") --new updated (Pawn.GetPhysSkisMaxSpeedKPH)
    HexPatches.MemoryPatch("libunity.so", 0XA3EBA18 + 8, hexValue, 4) --new updated (Pawn.GetPhysSkisMaxSpeedKPH)
    HexPatches.MemoryPatch("libunity.so", 0XA3EB8DC, "h40 00 00 1C C0 03 5F D6") --new updated (Pawn.GetPhysSkiingMoveMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3EB8DC + 4, "hC0 03 5F D6 00 00 7A 44") --new updated (Pawn.GetPhysSkiingMoveMaxSpeed)
    HexPatches.MemoryPatch("libunity.so", 0XA3EB8DC + 8, hexValue, 4) --new updated (Pawn.GetPhysSkiingMoveMaxSpeed)
    idkcstmToast("Snowboard: " .. value .. "%")
  end
}

--------------SKINS STARTS HERE---------------
function idkcstmToast(tttxt)
  toast=Toast.makeText(activity,tttxt,Toast.LENGTH_SHORT)
  .setView(loadlayout(cstmToast))
  .show()
  SansFont(msg,activity.getLuaDir().."/icon.png")
  msg.setText(tttxt)
end

function isRootAvailable()
  local file = io.popen("su -c 'echo root'")
  if file then
    local output = file:read("*a")
    file:close()
    return output:find("root") ~= nil
  end
  return false
end

function run(Patch1,run)
  Patch2=activity.getLuaDir(Patch1)
  os.execute("chmod 777 "..Patch2)
  Runtime.getRuntime().exec(""..Patch2)
  idkcstmToast(run,"#FF000000","#FFFFFFFF","15","15")
end

import "draw"

import "java.io.File"
if os.execute("su") then
  function patch(路径一, Arg2)

    调用路径一=activity.getLuaDir(路径一)
    os.execute("su -c chmod 777 "..调用路径一)
    Runtime.getRuntime().exec("su -c "..调用路径一)
    os.execute("su -c rmdir "..activity.getLuaDir("lib/*"))
    Toast.makeText(activity, Arg2,Toast.LENGTH_SHORT).show()
  end
 else

  function patch(路径一, Arg2)

    调用路径一= activity.getLuaDir(路径一)
    os.execute("chmod 777 " .. 调用路径一)
    Runtime.getRuntime().exec("" ..调用路径一)
    os.execute(" rmdir "..activity.getLuaDir("lib/*"))
    Toast.makeText(activity, Arg2,Toast.LENGTH_SHORT).show()
  end
end

function dg11.OnCheckedChangeListener()
  if dg11.checked then
    patch("lib/arm64-v8a/xiellovesu 34") -- memento
    idkcstmToast("AK117 - MEMENTO MORI: ACTIVATED")
  end
end

function dg12.OnCheckedChangeListener()
  if dg12.checked then
    patch("lib/arm64-v8a/skins2 220") --glorious
    idkcstmToast("KRM262 - GLORIOUS BLAZE: ACTIVATED")
  end
end

function dg13.OnCheckedChangeListener()
  if dg13.checked then
    patch("lib/arm64-v8a/djobeibfuheihfihsubfubsuebi 17") --songstress
    idkcstmToast("HS0405 - SONGSTRESS: ACTIVATED")
  end
end

function dg14.OnCheckedChangeListener()
  if dg14.checked then
    patch("lib/arm64-v8a/effect 998") --BOBA BLASTER
    idkcstmToast("BOBA BLASTER")
  end
end

function dg15.OnCheckedChangeListener()
  if dg15.checked then--[M] LW3 -Tundra - Pulsar Chamber
    patch("lib/arm64-v8a/mythic 7")
    idkcstmToast("MYTHIC TUNDRA")
  end
end

function dg17.OnCheckedChangeListener()
  if dg17.checked then--[M] LW3 -Tundra - Pulsar Chamber
    patch("lib/arm64-v8a/nigaskin 902")
    idkcstmToast("USS9 - FUSION")
  end
end

function dg18.OnCheckedChangeListener()
  if dg18.checked then--[M] LW3 -Tundra - Pulsar Chamber
    patch("lib/arm64-v8a/nigaskin 500")
    idkcstmToast("ODEN - MYTHIC")
  end
end

local HexPatches = {}

-- Memory Patch Logic
function HexPatches.MemoryPatch(libName, offset, hexBytes)
  pcall(function()
    local pid = getProcessId("com.garena.game.codm")
    if not pid then return end

    local mapsPath = "/proc/" .. pid .. "/maps"
    local memPath = "/proc/" .. pid .. "/mem"
    local startAddr

    for line in io.lines(mapsPath) do
      if line:find(libName) and line:find("r.xp") then
        startAddr = tonumber(line:match("^(%x+)-"), 16)
        break
      end
    end

    if not startAddr then return end

    local patchAddr = startAddr + offset
    local hex = hexBytes:gsub("%s", "")
    local bytes = {}
    for i = 1, #hex, 2 do
      table.insert(bytes, string.char(tonumber(hex:sub(i, i+1), 16)))
    end

    local mem = io.open(memPath, "r+b")
    if mem then
      mem:seek("set", patchAddr)
      mem:write(table.concat(bytes))
      mem:close()
    end
  end)
end

function getProcessId(pkg)
  local f = io.popen("pidof " .. pkg)
  if f then
    local pid = f:read("*n")
    f:close()
    return pid
  end
end

function logToFile(msg)
  local log = io.open("/storage/emulated/0/Zenkai_Bypass_Log.txt", "a")
  if log then
    log:write(os.date("[%H:%M:%S] ") .. "ZENKAI : " .. msg .. "\n")
    log:close()
  end
end

-- Main Bypass Logic (Online)
function startOnlineBypass()

  logToFile("🌐 Fetching online patches...")

  local pastebinURL = "https://pastebin.com/raw/hcxNagR8"

  Http.get(pastebinURL, function(code, content)
    if code ~= 200 or not content or content == "" then
      logToFile("❌ HTTP Error: " .. tostring(code))
      return
    end

    local patchCount = 0

    -- Loop para sa bawat line sa Pastebin
    for line in content:gmatch("[^\r\n]+") do
      line = line:gsub("%s+", "") -- Linisin ang spaces
      local offsetStr, hexBytes = line:match("([^:]+):([^:]+)")

      if offsetStr and hexBytes then
        local offset = tonumber(offsetStr) or tonumber(offsetStr, 16)
        if offset then
          HexPatches.MemoryPatch("libanogs.so", offset, hexBytes)
          patchCount = patchCount + 1
        end
      end
    end

    -- UI Notification
    activity.runOnUiThread(function()
      if patchCount > 0 then
        idkcstmToast("BYPASS ACTIVE: " .. patchCount .. " OFFSETS APPLIED")
        logToFile("✅ Successfully patched " .. patchCount .. " offsets.")
       else
        idkcstmToast("❌ NO OFFSETS FOUND IN DATABASE")
      end
    end)
  end)
end

-- Wait for Game and Library
function waitForGameAndLib(libName)
  local maxRetries = 30
  local retries = 0

  local function check()
    local pid = getProcessId("com.garena.game.codm")
    if pid then
      local foundLib = false
      for line in io.lines("/proc/" .. pid .. "/maps") do
        if line:find(libName) then
          foundLib = true
          break
        end
      end

      if foundLib then
        logToFile("✅ CODM + " .. libName .. " detected!")
        -- Delay ng 2 seconds bago i-run ang online bypass para sigurado
        Handler().postDelayed(Runnable { run = startOnlineBypass }, 2000)
        return
      end
    end

    retries = retries + 1
    if retries < maxRetries then
      Handler().postDelayed(Runnable { run = check }, 2000)
     else
      logToFile("❌ Timeout: Game or Lib not found.")
    end
  end

  check()
end

-- Start Script
logToFile("🚀 Script Started. Waiting for CODM...")
waitForGameAndLib("libanogs.so")

