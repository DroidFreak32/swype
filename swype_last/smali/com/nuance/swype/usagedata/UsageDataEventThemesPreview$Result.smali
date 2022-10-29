.class public final enum Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
.super Ljava/lang/Enum;
.source "UsageDataEventThemesPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

.field public static final enum ABORTED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

.field public static final enum AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

.field public static final enum ALREADY_OWNED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

.field public static final enum NULL_THEME:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

.field public static final enum SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "Success"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 39
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    const-string/jumbo v1, "NULL_THEME"

    const-string/jumbo v2, "NullTheme"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->NULL_THEME:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 40
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    const-string/jumbo v1, "AC_EXCEPTION"

    const-string/jumbo v2, "ACException"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 41
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    const-string/jumbo v1, "ALREADY_OWNED"

    const-string/jumbo v2, "Already Owned"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ALREADY_OWNED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 42
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    const-string/jumbo v1, "ABORTED"

    const-string/jumbo v2, "Aborted"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ABORTED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->NULL_THEME:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ALREADY_OWNED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->ABORTED:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->$VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->result:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->$VALUES:[Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->result:Ljava/lang/String;

    return-object v0
.end method
