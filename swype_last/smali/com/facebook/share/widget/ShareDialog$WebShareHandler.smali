.class Lcom/facebook/share/widget/ShareDialog$WebShareHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebShareHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/ShareDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/ShareDialog$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method private createAndMapAttachments(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;
    .registers 12
    .param p1, "content"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p2, "callId"    # Ljava/util/UUID;

    .prologue
    .line 403
    new-instance v7, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v7}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v7, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v2

    .line 405
    .local v2, "contentBuilder":Lcom/facebook/share/model/SharePhotoContent$Builder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v5, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_59

    .line 408
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/share/model/SharePhoto;

    .line 409
    .local v6, "sharePhoto":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {v6}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 411
    .local v4, "photoBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_53

    .line 412
    invoke-static {p2, v4}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 414
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    new-instance v7, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v7}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v6

    .line 419
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    :cond_53
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 424
    .end local v4    # "photoBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "sharePhoto":Lcom/facebook/share/model/SharePhoto;
    :cond_59
    invoke-virtual {v2, v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 425
    invoke-static {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 426
    invoke-virtual {v2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v7

    return-object v7
.end method

.method private getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 390
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_c

    .line 392
    :cond_8
    const-string/jumbo v0, "share"

    .line 397
    :goto_b
    return-object v0

    .line 393
    :cond_c
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_14

    .line 394
    const-string/jumbo v0, "share_open_graph"

    goto :goto_b

    .line 397
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 359
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    # invokes: Lcom/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z
    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->access$700(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 351
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .registers 7
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 364
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->access$800(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v2, v3, p1, v4}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 366
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 368
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 371
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_29

    move-object v2, p1

    .line 372
    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 381
    .local v1, "params":Landroid/os/Bundle;
    :goto_21
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 386
    return-object v0

    .line 373
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_29
    instance-of v2, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v2, :cond_3d

    move-object v2, p1

    .line 374
    check-cast v2, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAndMapAttachments(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v2

    .line 376
    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 377
    .restart local v1    # "params":Landroid/os/Bundle;
    goto :goto_21

    .end local v1    # "params":Landroid/os/Bundle;
    :cond_3d
    move-object v2, p1

    .line 378
    check-cast v2, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "params":Landroid/os/Bundle;
    goto :goto_21
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 351
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 354
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
