Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA0BB549D
	for <lists+kexec@lfdr.de>; Tue, 17 Sep 2019 19:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byIQXL7ptkrfWX5FiuFvN2h1FSKD5vYC22ivGhM8vms=; b=Zyq1ytV6CJBhZV
	viAtk2+XbVt+Anhi0XTJgacZOEC8uIm9bUF3QApZ1jbsGvQh35xGhGqf7NR1D/FXpHQIB7Q/J9jVo
	a6Pb0tbINZ0oYa47j+SVyrpDyAj3Mcp+YaywRV9s0O2EpuDri5ppJrfeXwxlnRmxz80MnYzswFS80
	Dwa4qKEPaHI+Pf3djWA9t+jXGGRxuuiG7hPdAk+HsHuRNydq80PwcdQfC1xiFwNF6MTOvod2iQ13D
	hn7tmDrfwYyZcEDjqO3YasLpJFBz4NAGBgDSXHWSS3BoF6FXRRslWeSqrwQmrwioLlJ80qXJjvc7D
	VrLXia84WLy3uUUiTqkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHeB-0006HG-3W; Tue, 17 Sep 2019 17:52:15 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHdz-0005zz-8R
 for kexec@lists.infradead.org; Tue, 17 Sep 2019 17:52:06 +0000
Received: by mail-io1-xd2c.google.com with SMTP id n197so9668867iod.9
 for <kexec@lists.infradead.org>; Tue, 17 Sep 2019 10:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RSSWU1+Xo+MtZV+4tIxWCoZYIdVnPDTh24mMeEdnfC8=;
 b=f6xXRNIdm2LfcatzUG+ELUCcKm2m4kbT8kRnU8rZ1axz6WgCCyZiRD8pNXqBQcrGry
 VBcXqcuVLu1n5hcT4tYlzSRGogwYCoRwlccl57LUEqkrV5VjnIoDibHoPIzSqiOOY4UJ
 8gida/qI/s54DiQC4ADojlbZDw4UMc+Rznra9PW5Ry6hQyIQneSZZwyU5Mn9zuXJqpGI
 1f6FQZpkBt5k5goRYoFay50ghmNL4Mqz9Th4AFKFz4w6iUeYO84DXYj9nH4x8LylKMFO
 1U3Oy9ZQv9RPbLcd8Bj0WDmM6GcsJGzUC7h0NNJAWsnx1awtX9lcduGycVXOmbJbH5sW
 naIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RSSWU1+Xo+MtZV+4tIxWCoZYIdVnPDTh24mMeEdnfC8=;
 b=svuo3TM+GHIAix8yn4LuFVSfLetNOz4N571lS/8Ts/QNDf0tb2NkGv3YzVWPBCId99
 uMorKH1odCKHXmt8ySkxUT0AZHhP6Zhli8jFwmm33fRn2Kq/A9mG9HC89LOArLhgUlin
 P/t3TCZru95xQkp2xxmnHlNmT9z2DkxnfYKHhQ4zrU1te5aOaPSqnO3zvstdYda2xRMl
 pLpQTonJbXcDHHgEBMZ0rVIzFPmdTzi43GYWDHVFh1GhlVYo/kJpTI5CNPMD0aKZSgE+
 iYZG4lbP3m35m1J39psVUMAKNrjeDl/hQIo9O3utKMvrMbi/j2ZXJOtGkb5HiSuDyWtw
 bcXg==
X-Gm-Message-State: APjAAAWRBfEQ14ny+21Yfj+XLpbd4Fg+PV4OyBOhEGQnC0lwJYHGCLYb
 kf4+p43GvTBm8yYMZDcO2cN+2nERtJCEm4vDgmw+VA==
X-Google-Smtp-Source: APXvYqwoHCojXSeJGCX3EgaslGQWOpxdh+doiQXnH7lYZr7YVAIb0mFKqDE9RClUwJQK6gZuL+7a7aGceJIaMCkPfAM=
X-Received: by 2002:a6b:c903:: with SMTP id z3mr5318420iof.204.1568742719067; 
 Tue, 17 Sep 2019 10:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
 <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
 <CACdnJusU7FKPFTz9MbXWvs-NHLX7bPLwkVynyK6cLxbxCNjrNQ@mail.gmail.com>
 <CAKv+Gu9_GDHiU2iBD7Lsk5dKupKBQO9Cfn3V2rhSU+DqQkAHOw@mail.gmail.com>
In-Reply-To: <CAKv+Gu9_GDHiU2iBD7Lsk5dKupKBQO9Cfn3V2rhSU+DqQkAHOw@mail.gmail.com>
From: Matthew Garrett <mjg59@google.com>
Date: Tue, 17 Sep 2019 10:51:47 -0700
Message-ID: <CACdnJut3t+TNLKg0=hUEFCT6wXmJtE2ju1hg6tuXue6L9Bxp6Q@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_105203_476994_AD202FB4 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Dave Young <dyoung@redhat.com>, Laszlo Ersek <lersek@redhat.com>,
 kexec devel list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 2:18 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> > > - Remove the cleanup from the kexec path -- the cleanup logic from [4],
> > >   even if justified for the cold boot path, should have never modified
> > >   the kexec path.
> >
> > I agree that there's no benefit in it being called in the kexec path.
>
> Can I take that as an ack?

An ack of this hunk.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
