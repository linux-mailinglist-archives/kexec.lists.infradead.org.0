Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51F3124AB1
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 16:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azP/yA2PneL3WZD8raYpNawUbpW9krU4EXTbP+RzEAk=; b=fezt5GWN/lh5fO
	6qIJy8htVfZKDdSZm+Dt2aW1hVw7oRrH3cwTaHgI7d2WK3Rt40T8fjW/PSudttHBQFeQ4QFRJRn0r
	AXBSFnQwA2WlVOcCPTDJu/d64yVo6e7L4RCU+DsetETMbD//KmerT5GpuYtA076hcDiYTuQnDsN6E
	XNMsHl1AyCc1d5vZcQuoXtHEuaErYnoxs7b97KbrnsOcnnQzOXLeoEa7nrlednwH9lXfF1z6Z7puX
	NWSXeZf6EoDSNxdr8YkOCvY+Ej/jweSGxM2pXO9fQkyRggenFbajWhqp66xVQsu1x+Yz644wcbtqJ
	+CtOaUE2Icm/ipsvFe6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihawh-0007C0-Fr; Wed, 18 Dec 2019 15:09:03 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihawb-0007BZ-3A
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 15:08:58 +0000
Received: by mail-yb1-xb43.google.com with SMTP id i3so841897ybe.12
 for <kexec@lists.infradead.org>; Wed, 18 Dec 2019 07:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cRjrCjQqMmpUKOv+LM6vr4Yp43vRbRWEgpxYki1qYWs=;
 b=WMGRV7gKSNspAbiD23z1ESILF/ead3KQh30t3rSLzWDtVohYhlTkhLpPgUfcR1O3zh
 GTftSnQa5+DI/s7W/IrqWLLUpRWEIKWkEYAyM2Cl2ooJKq9yJhmJmz+3Xxb3elryMlC0
 QSucLLWxR9GAdOPdUYdkd59Y5CzWQxp8zCpQ9NNpJtvJiXwp6zFYqPG5FPMoAGmFkTWG
 8Nr0HGxnldJHZ+R+VIyCiMuFTHAMTllO9IRNaoEMPR/LU7kGMsFR0iZg5WKlVn+HCfk4
 NALnLdhIZJHLuzUhkY2/YjeVKIEcjqiAAXHmf1nvU0wH3AanftzzcPfgopbhQUe4YMOQ
 g+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cRjrCjQqMmpUKOv+LM6vr4Yp43vRbRWEgpxYki1qYWs=;
 b=EuFkXSQLkBSUDUv1OrUC9sa4d+LihvBnqOA9DN+dvLKP8ZOawd7q0+XsSZ7/jUFaua
 Yo1zAPyKRyghqtXOoxeRO0E9mQ29DD51D5IbqL14MoyGyVQsr7ABO8rfkpz53V8rp9F6
 TuWHQekegTX/d8uWLvrzA3W/JKfrHuh4tAD1KHIizpI93fCmPJPK5n/p2ojxfq2amYKE
 R+bk5fYAuGMeKVP/L7/9hMZ7EIwISg8bXBP3zRTDpQgtQvmGyYeDORVhVcKbpXSW27tH
 NT/1gFx2cIU1B2NmH0Rjh+9yV1V3cNjXn8T/QetBB1UJiSIQ+qUJ984Q/Arb0UABBhsU
 gWGQ==
X-Gm-Message-State: APjAAAWSoewgO6/ohOVmLDi0fEt2MigRkdZq1rSC8imZE43RtjkVeu9p
 xv4DOApBMFDurNPS8M+jdg==
X-Google-Smtp-Source: APXvYqyQivGsC7fay5luf5smFVgXTBteuRm6fS6aXVNcNz/0pSiDS1uPw9CVpaNZ1Apz3wDCQHQubQ==
X-Received: by 2002:a25:28c2:: with SMTP id o185mr2331713ybo.160.1576681735437; 
 Wed, 18 Dec 2019 07:08:55 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id g29sm1023754ywk.31.2019.12.18.07.08.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Dec 2019 07:08:54 -0800 (PST)
Date: Wed, 18 Dec 2019 10:08:48 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: Re: [PATCH v2 2/3] arm64: kexec: allocate memory space avoiding
 reserved regions
Message-ID: <20191218150848.anisllbuawkwolm6@gabell>
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
 <20190111095946.28070-3-takahiro.akashi@linaro.org>
 <20191213200430.uxuebdavpq64scfh@gabell>
 <CACi5LpOKCfgjmxo59sT5bVN0qHvYapy1NRXn0F=_By-vp0g=sA@mail.gmail.com>
 <20191216141606.nhosl4v233mtvu4u@gabell>
 <20191218024849.GA7386@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218024849.GA7386@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_070857_134281_C08D0E72 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 11:48:50AM +0900, AKASHI Takahiro wrote:
> On Mon, Dec 16, 2019 at 09:16:06AM -0500, Masayoshi Mizuma wrote:
> > On Mon, Dec 16, 2019 at 11:22:56AM +0530, Bhupesh Sharma wrote:
> > > Thanks Masa,
> 
> [...]
> 
> > > Since this is an old thread, it would be useful for people looking at
> > > the same, if you can add some comments/details about why you think
> > > this nit is needed.
> > 
> > Thank you for your follow up and I'm sorry I didn't explain it.
> > mem_regions_alloc_and_exclude() may fail in case realloc() or
> > mem_region_exclude() fail, so it would be better to add the error
> > handling.
> > 
> > > 
> > > Also if Akashi agrees with the same, it would be better if he could
> > > send a rebased version of the patchset (with your comments addressed),
> > > so that the same can be picked for upstream kexec-tools cleanly.
> > 
> > Sounds great!
> 
> I have almost forgotten the background of this patch.
> If you see that it is still useful, please feel free to re-post it.

Thanks! I'll repost the patchset as v3.

- Masa
> 
> Thanks,
> -Takahiro Akashi
> 
> > - Masa
> > 
> > > 
> > > @Akashi- Hi Akashi, Please let us know your views.
> > > 
> > > Thanks,
> > > Bhupesh
> > > 
> > > > +                     dbgprintf("%s:-      %016llx - %016llx\n",
> > > > > +                                     __func__, start, end);
> > > > > +             }
> > > > > +     }
> > > > > +
> > > > > +     fclose(fp);
> > > > > +
> > > > > +     *range = memranges.ranges;
> > > > > +     *ranges = memranges.size;
> > > > >
> > > > >       /* As a fallback option, we can try determining the PHYS_OFFSET
> > > > >        * value from the '/proc/iomem' entries as well.
> > > > > @@ -976,52 +1041,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > > > >        * between the user-space and kernel space 'PHYS_OFFSET'
> > > > >        * value.
> > > > >        */
> > > > > -     set_phys_offset(r->start, "iomem");
> > > > > +     if (memranges.size)
> > > > > +             set_phys_offset(memranges.ranges[0].start, "iomem");
> > > > >
> > > > > -     dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
> > > > > -             r->end, str);
> > > > > +     dbgprint_mem_range("System RAM ranges;",
> > > > > +                             memranges.ranges, memranges.size);
> > > > >
> > > > >       return 0;
> > > > >  }
> > > > >
> > > > > -/**
> > > > > - * get_memory_ranges_iomem - Try to get the memory ranges from
> > > > > - * /proc/iomem.
> > > > > - */
> > > > > -
> > > > > -static int get_memory_ranges_iomem(struct memory_range *array,
> > > > > -     unsigned int *count)
> > > > > -{
> > > > > -     *count = kexec_iomem_for_each_line(NULL,
> > > > > -             get_memory_ranges_iomem_cb, array);
> > > > > -
> > > > > -     if (!*count) {
> > > > > -             dbgprintf("%s: failed: No RAM found.\n", __func__);
> > > > > -             return EFAILED;
> > > > > -     }
> > > > > -
> > > > > -     return 0;
> > > > > -}
> > > > > -
> > > > > -/**
> > > > > - * get_memory_ranges - Try to get the memory ranges some how.
> > > > > - */
> > > > > -
> > > > > -int get_memory_ranges(struct memory_range **range, int *ranges,
> > > > > -     unsigned long kexec_flags)
> > > > > -{
> > > > > -     static struct memory_range array[KEXEC_SEGMENT_MAX];
> > > > > -     unsigned int count;
> > > > > -     int result;
> > > > > -
> > > > > -     result = get_memory_ranges_iomem(array, &count);
> > > > > -
> > > > > -     *range = result ? NULL : array;
> > > > > -     *ranges = result ? 0 : count;
> > > > > -
> > > > > -     return result;
> > > > > -}
> > > > > -
> > > > >  int arch_compat_trampoline(struct kexec_info *info)
> > > > >  {
> > > > >       return 0;
> > > > > --
> > > > > 2.19.1
> > > > >
> > > > >
> > > >
> > > 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
