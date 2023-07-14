.class interface abstract Lcom/crashlytics/android/Report;
.super Ljava/lang/Object;
.source "Report.java"


# virtual methods
.method public abstract getCustomHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract remove()Z
.end method
