.class Lcom/nuance/swype/input/LocaleSettings$Settings;
.super Ljava/lang/Object;
.source "LocaleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/LocaleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Settings"
.end annotation


# instance fields
.field private final currencyType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "currencyType"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/nuance/swype/input/LocaleSettings$Settings;->currencyType:I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/LocaleSettings$Settings;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/LocaleSettings$Settings;

    .prologue
    .line 19
    iget v0, p0, Lcom/nuance/swype/input/LocaleSettings$Settings;->currencyType:I

    return v0
.end method
