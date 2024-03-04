.class public interface abstract Lcom/nuance/connect/api/ResourcesService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;
    }
.end annotation


# virtual methods
.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLanguageString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isLanguageAvailable(Ljava/util/Locale;)Z
.end method

.method public abstract isLanguageProcessing(Ljava/util/Locale;)Z
.end method

.method public abstract setBitmap(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
.end method

.method public abstract setLanguageString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V
.end method

.method public abstract subscribe([Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V
.end method

.method public abstract unsubscribe(Ljava/util/Locale;)V
.end method
