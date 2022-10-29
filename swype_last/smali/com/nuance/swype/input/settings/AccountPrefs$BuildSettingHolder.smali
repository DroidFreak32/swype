.class Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;
.super Ljava/lang/Object;
.source "AccountPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuildSettingHolder"
.end annotation


# instance fields
.field activeAccount:Lcom/nuance/swypeconnect/ac/ACAccount;

.field backupEnabled:Z

.field devices:[Lcom/nuance/swypeconnect/ac/ACDevice;

.field isAvailable:Z

.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

.field thisDeviceId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;Lcom/nuance/swype/input/settings/AccountPrefs$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;
    .param p2, "x1"    # Lcom/nuance/swype/input/settings/AccountPrefs$1;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    return-void
.end method
