.class final enum Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;
.super Ljava/lang/Enum;
.source "SettingsV11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsV11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrawerItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Divider:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Gestures:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Help:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Language_Category:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_My_Words:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

.field public static final enum Drawer_Updates:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Store"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 114
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Settings"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 115
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Themes"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 116
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Chinese_Settings"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 117
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_My_Words"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_My_Words:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 118
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Language_Category"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Language_Category:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 119
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Divider"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Divider:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 120
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Gestures"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Gestures:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 121
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Help"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Help:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 122
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    const-string/jumbo v1, "Drawer_Updates"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Updates:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 112
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_My_Words:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Language_Category:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Divider:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Gestures:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Help:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Updates:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->$VALUES:[Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->$VALUES:[Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    return-object v0
.end method
