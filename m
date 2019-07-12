Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51F66836
	for <lists+kexec@lfdr.de>; Fri, 12 Jul 2019 10:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEotjOsi7QrUUAi3JJJIgnSQq0mvLyTSAoAwVLkryrY=; b=B5BCI1RhpXo1nE
	niKwsm+u28GFb55GyxQ/zx+aamR7U9y2icw6BuYO/htqDm64eB64Qbv1VKwY/nNm4S9YXunEwWwOr
	KGCIn5qI7SETrlVAoofLUE6qIQTn0myN63q308nT5o/dz06rNZMyHn/1R03uOUnKgnN45lcNJ4H9Z
	a8zpXFyTAhpX8rtPgvGABbhYG64ZUSGV2iZU9AiblNnRk4YSeWYhIMI+sYBcJ8iS9/4xfWuBAb+9/
	UTSAQfAqJdbVQODEp6LIcCQavpH/GhYOpcNSPwz66jojC9zQoxKZytZ4pl31IiGrBOnvvip8qFMpZ
	ZU3LJ7SNOKv58DBzVeXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqaD-0002Pg-SI; Fri, 12 Jul 2019 08:07:09 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqaA-0002PG-FJ
 for kexec@lists.infradead.org; Fri, 12 Jul 2019 08:07:07 +0000
Received: by mail-lf1-f65.google.com with SMTP id c19so5861291lfm.10
 for <kexec@lists.infradead.org>; Fri, 12 Jul 2019 01:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rObNFlryLjAtzlPzI5PvapDzXQGfd1KCU2EG3mp9AW8=;
 b=EVcFPu54uRjKAA1EzYI2xzA3+7N5qxkFR/1EYE+lQd3ChOtT/uWNOI1uW+ZASPtHF2
 XItB+ls9x5ICA6xPKgRQMRKxiwcxEhMj0dHrGg0eXSIOWiwoSNHIIL5C9KVHoNKhUvhk
 KYP9ys+TJfYUbDgiZF/6u9mSg/IkYM4RtCePRTurKwNba7qCSQzaQ6dJnYJ8zNBSlXUP
 34DitJHp1uA42AtX0Jvj/jECFhju8U5JaS7PSVgrH7E29zj7nChiYodXz+R+uGU0XOoI
 9IIPLWy2U7K6s175aYVqAZacdJMSy5gkAIJGaL0G6VFrzQw+3XCN/UePXCuhBjIGe77s
 hDww==
X-Gm-Message-State: APjAAAXKBFN3wZPrCR1InvlVMIgJPwmDzGqOXCTGyhe/n6NK7YNeYpA7
 r1i4M+WAjs3RDv4IIozU1ZdovbIdFHFiK8jbvVKqUg==
X-Google-Smtp-Source: APXvYqyaJedCEenx6mb+4VGUTq62NzuIIa5QJbiDbStB6PqiHjK+AgvCvmUBQoQo82NP9IS9VCMKlnYX4lw6CLeUnms=
X-Received: by 2002:ac2:50cd:: with SMTP id h13mr4203768lfm.36.1562918824717; 
 Fri, 12 Jul 2019 01:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
 <1562788469-22935-4-git-send-email-bhsharma@redhat.com>
 <20190711095800.i6flfrcdidw2t6la@verge.net.au>
In-Reply-To: <20190711095800.i6flfrcdidw2t6la@verge.net.au>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 12 Jul 2019 13:36:52 +0530
Message-ID: <CACi5LpNdPfr8-7-jgp98FbRWz7DaiM=fLt1uctv5rGwUK1rTbA@mail.gmail.com>
Subject: Re: [PATCH 3/4] kexec/kexec-zlib.h: Add 'is_zlib_file()' helper
 function
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_010706_519971_A6868006 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Simon,

On Thu, Jul 11, 2019 at 3:28 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Thu, Jul 11, 2019 at 01:24:28AM +0530, Bhupesh Sharma wrote:
> > This patch adds 'is_zlib_file()' helper function which can be
> > used to quickly determine with the passed kernel image is a zlib
> > compressed kernel image.
> >
> > This is specifically useful for arm64 zImage (or Image.gz) support,
> > which is introduced by later patches in this patchset.
> >
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  kexec/kexec-zlib.h |  1 +
> >  kexec/zlib.c       | 32 ++++++++++++++++++++++++++++++++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/kexec/kexec-zlib.h b/kexec/kexec-zlib.h
> > index 43c107bf4a72..16300f294759 100644
> > --- a/kexec/kexec-zlib.h
> > +++ b/kexec/kexec-zlib.h
> > @@ -6,5 +6,6 @@
> >
> >  #include "config.h"
> >
> > +int is_zlib_file(const char *filename, off_t *r_size);
> >  char *zlib_decompress_file(const char *filename, off_t *r_size);
> >  #endif /* __KEXEC_ZLIB_H */
> > diff --git a/kexec/zlib.c b/kexec/zlib.c
> > index 95b608059d41..34d5ca566769 100644
> > --- a/kexec/zlib.c
> > +++ b/kexec/zlib.c
> > @@ -23,6 +23,32 @@ static void _gzerror(gzFile fp, int *errnum, const char **errmsg)
> >       }
> >  }
> >
> > +int is_zlib_file(const char *filename, off_t *r_size)
> > +{
> > +     gzFile fp;
> > +     int errnum;
> > +     const char *msg;
> > +
> > +     if (!filename)
> > +             goto out;
> > +
> > +     fp = gzopen(filename, "rb");
>
> Does fp need to be closed somewhere to avoid a leak?

Right. Will fix this in v2.

v2 will be soon on its way.

Thanks,
Bhupesh

> > +     if (fp == 0) {
> > +             _gzerror(fp, &errnum, &msg);
> > +             dbgprintf("Cannot open `%s': %s\n", filename, msg);
> > +             goto out;
> > +     }
> > +
> > +     if (gzdirect(fp))
> > +             /* It's not in gzip format */
> > +             goto out;
> > +
> > +     /* It's in gzip format */
> > +     return 1;
> > +out:
> > +     return 0;
> > +}
> > +
> >  char *zlib_decompress_file(const char *filename, off_t *r_size)
> >  {
> >       gzFile fp;
> > @@ -84,6 +110,12 @@ fail:
> >       return buf;
> >  }
> >  #else
> > +
> > +int is_zlib_file(const char *filename, off_t *r_size)
> > +{
> > +     return 0;
> > +}
> > +
> >  char *zlib_decompress_file(const char *UNUSED(filename), off_t *UNUSED(r_size))
> >  {
> >       return NULL;
> > --
> > 2.7.4
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
