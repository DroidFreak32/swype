.class public Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;
.super Lcom/fsck/k9/mail/internet/TextBody;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTextBody"
.end annotation


# instance fields
.field private mBodyForDisplay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 5304
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 5305
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "bodyForDisplay"    # Ljava/lang/String;

    .prologue
    .line 5309
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 5310
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    .line 5311
    return-void
.end method


# virtual methods
.method public getBodyForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5315
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyForDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBodyForDisplay"    # Ljava/lang/String;

    .prologue
    .line 5320
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    .line 5321
    return-void
.end method
