.class public final enum Lcom/fsck/k9/Account$Searchable;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Searchable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$Searchable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$Searchable;

.field public static final enum ALL:Lcom/fsck/k9/Account$Searchable;

.field public static final enum DISPLAYABLE:Lcom/fsck/k9/Account$Searchable;

.field public static final enum NONE:Lcom/fsck/k9/Account$Searchable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    new-instance v0, Lcom/fsck/k9/Account$Searchable;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$Searchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    new-instance v0, Lcom/fsck/k9/Account$Searchable;

    const-string v1, "DISPLAYABLE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$Searchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$Searchable;->DISPLAYABLE:Lcom/fsck/k9/Account$Searchable;

    new-instance v0, Lcom/fsck/k9/Account$Searchable;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$Searchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$Searchable;->NONE:Lcom/fsck/k9/Account$Searchable;

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/Account$Searchable;

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->DISPLAYABLE:Lcom/fsck/k9/Account$Searchable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/Account$Searchable;->NONE:Lcom/fsck/k9/Account$Searchable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/Account$Searchable;->$VALUES:[Lcom/fsck/k9/Account$Searchable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$Searchable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/fsck/k9/Account$Searchable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$Searchable;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$Searchable;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/fsck/k9/Account$Searchable;->$VALUES:[Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$Searchable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$Searchable;

    return-object v0
.end method
