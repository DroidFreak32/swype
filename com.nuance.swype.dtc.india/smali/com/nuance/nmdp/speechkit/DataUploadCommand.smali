.class public interface abstract Lcom/nuance/nmdp/speechkit/DataUploadCommand;
.super Ljava/lang/Object;
.source "DataUploadCommand.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    }
.end annotation


# virtual methods
.method public abstract addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
.end method

.method public abstract addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract setListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;)V
.end method

.method public abstract start()V
.end method
