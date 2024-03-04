.class public final enum Lcom/fsck/k9/mail/Folder$FolderClass;
.super Ljava/lang/Enum;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FolderClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/Folder$FolderClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/Folder$FolderClass;

.field public static final enum FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

.field public static final enum INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

.field public static final enum NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

.field public static final enum NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

.field public static final enum SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Folder$FolderClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    new-instance v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v1, "NO_CLASS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/Folder$FolderClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    new-instance v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v1, "INHERITED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/Folder$FolderClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    new-instance v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v1, "FIRST_CLASS"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mail/Folder$FolderClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    new-instance v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    const-string v1, "SECOND_CLASS"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/Folder$FolderClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->$VALUES:[Lcom/fsck/k9/mail/Folder$FolderClass;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->$VALUES:[Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/Folder$FolderClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method
