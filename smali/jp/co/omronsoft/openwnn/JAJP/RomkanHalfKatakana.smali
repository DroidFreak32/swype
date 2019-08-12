.class public Ljp/co/omronsoft/openwnn/JAJP/RomkanHalfKatakana;
.super Ljava/lang/Object;
.source "RomkanHalfKatakana.java"

# interfaces
.implements Ljp/co/omronsoft/openwnn/LetterConverter;


# static fields
.field private static final mRomkanTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanHalfKatakana$1;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/RomkanHalfKatakana$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanHalfKatakana;->mRomkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/openwnn/ComposingText;)Z
    .locals 1
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;

    .prologue
    .line 360
    sget-object v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanHalfKatakana;->mRomkanTable:Ljava/util/HashMap;

    invoke-static {p1, v0}, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana;->convert(Ljp/co/omronsoft/openwnn/ComposingText;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 365
    return-void
.end method
