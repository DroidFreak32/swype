.class public interface abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract exist()Z
.end method

.method public abstract open(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;)Z
.end method

.method public abstract read([BII)I
.end method

.method public abstract remove()Z
.end method

.method public abstract rename(Ljava/lang/String;)Z
.end method

.method public abstract size()J
.end method

.method public abstract skip(J)J
.end method

.method public abstract write([BII)I
.end method
