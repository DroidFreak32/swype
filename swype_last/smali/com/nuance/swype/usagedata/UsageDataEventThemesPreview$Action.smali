.class public final enum Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;
.super Ljava/lang/Enum;
.source "UsageDataEventThemesPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

.field public static final enum APPLY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

.field public static final enum BUY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

.field public static final enum CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

.field public static final enum INSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

.field public static final enum UNINSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    const-string/jumbo v1, "APPLY"

    const-string/jumbo v2, "Apply"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->APPLY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 19
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    const-string/jumbo v1, "BUY"

    const-string/jumbo v2, "Buy"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->BUY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 20
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "Cancel"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 21
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    const-string/jumbo v1, "INSTALL"

    const-string/jumbo v2, "Install"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->INSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 22
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    const-string/jumbo v1, "UNINSTALL"

    const-string/jumbo v2, "Uninstall"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->UNINSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->APPLY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->BUY:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->INSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->UNINSTALL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->$VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->action:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->$VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->action:Ljava/lang/String;

    return-object v0
.end method
