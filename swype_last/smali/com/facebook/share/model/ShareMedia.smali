.class public abstract Lcom/facebook/share/model/ShareMedia;
.super Ljava/lang/Object;
.source "ShareMedia.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMedia$Builder;,
        Lcom/facebook/share/model/ShareMedia$Type;
    }
.end annotation


# instance fields
.field private final params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMedia;->params:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareMedia$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/facebook/share/model/ShareMedia$Builder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    # getter for: Lcom/facebook/share/model/ShareMedia$Builder;->params:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMedia$Builder;->access$000(Lcom/facebook/share/model/ShareMedia$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/share/model/ShareMedia;->params:Landroid/os/Bundle;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMediaType()Lcom/facebook/share/model/ShareMedia$Type;
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/share/model/ShareMedia;->params:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareMedia;->params:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
