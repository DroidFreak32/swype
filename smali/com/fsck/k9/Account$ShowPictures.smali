.class public final enum Lcom/fsck/k9/Account$ShowPictures;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowPictures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/Account$ShowPictures;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$ShowPictures;

.field private static enum ALWAYS:Lcom/fsck/k9/Account$ShowPictures;

.field public static final enum NEVER:Lcom/fsck/k9/Account$ShowPictures;

.field private static enum ONLY_FROM_CONTACTS:Lcom/fsck/k9/Account$ShowPictures;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/fsck/k9/Account$ShowPictures;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$ShowPictures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    new-instance v0, Lcom/fsck/k9/Account$ShowPictures;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$ShowPictures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$ShowPictures;->ALWAYS:Lcom/fsck/k9/Account$ShowPictures;

    new-instance v0, Lcom/fsck/k9/Account$ShowPictures;

    const-string v1, "ONLY_FROM_CONTACTS"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$ShowPictures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/Account$ShowPictures;->ONLY_FROM_CONTACTS:Lcom/fsck/k9/Account$ShowPictures;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/Account$ShowPictures;

    sget-object v1, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/Account$ShowPictures;->ALWAYS:Lcom/fsck/k9/Account$ShowPictures;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/Account$ShowPictures;->ONLY_FROM_CONTACTS:Lcom/fsck/k9/Account$ShowPictures;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/Account$ShowPictures;->$VALUES:[Lcom/fsck/k9/Account$ShowPictures;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$ShowPictures;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lcom/fsck/k9/Account$ShowPictures;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$ShowPictures;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/Account$ShowPictures;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/fsck/k9/Account$ShowPictures;->$VALUES:[Lcom/fsck/k9/Account$ShowPictures;

    invoke-virtual {v0}, [Lcom/fsck/k9/Account$ShowPictures;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/Account$ShowPictures;

    return-object v0
.end method
