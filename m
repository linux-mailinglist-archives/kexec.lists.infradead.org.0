Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE931C9E3F
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 00:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ar82JhOB3mOBEjTdRJfgcMpyFOYPAgM2B/BpOtbgz98=; b=Ky/Uu90ASUYPo3
	inU2uMo9YMAbmN1WnS8UzD071UA1nTGlr0T0Sfk+aG5bfMNox/yuoBq2EVTX3W+OJFvTsrdyY5npT
	keAgkwMHTdh/U9D/FJpx/r8WMUxsh9LES1/l6RK+HteCc7tqN/9TqiJjAYe+iBdG0BaWRlN3/USPM
	IXDvSXZ54b8G59sw2samZNyfOks5ycpVeHTBga+rxp1CKg7jQyHSLzNExdAN8mkc20EG5xt8PUMX/
	1zhG1Ef7SaysSy8wV+lWruLhea7xDbbCI6HzqwUgpzgvZ2Ky3ETkbQjkrPoMn4orQLaYyM39vN5vY
	6PsgmAtrfnINGC7CZPKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWogH-0001W4-Lk; Thu, 07 May 2020 22:07:49 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWogD-0001VR-V1
 for kexec@lists.infradead.org; Thu, 07 May 2020 22:07:47 +0000
Received: by mail-qt1-x842.google.com with SMTP id i68so6254865qtb.5
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 15:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=en4GHRy/JYPyqA5v6A21rwrH4iUeiYDglj3PCm7zaTE=;
 b=NsTphQo3KrIot3EHRR9MKfhiB8/WsOHq01/hLgkb+H//7PrOqvCj5NTxbnaFUnfyCm
 0iwuvrNpoPVetfRb67BNbjybK6/uoNcUveymSiiNlXA45tEK0EtsQ5rzNJPrjzwGfrNZ
 RYuwS6foMYX9JtD8p/lE+cd5djCyYEqiAn3kIIyUNO+d5VF1/CTPg8jdMFLrI6/DZ95k
 OEh0TDXAiOnZ7ahcPGDPGCQcFv2LK27gK0aLjSyXsAk46ZO2MfZ0r/v4SpluZNwKJAUM
 2mQyVIqlXMDWClY69c2WULVjuPG+YFgSDAi+ZsWeevurvhZ45jn6p8zAOo30BIB1h9Sa
 LxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=en4GHRy/JYPyqA5v6A21rwrH4iUeiYDglj3PCm7zaTE=;
 b=GPCYsT1fLtc5n5WHdPwQ2z4Mw5QQK691D4h0W6zQPlMN8qnRs0rWVKxktAD5qPBMHM
 W4Xz4jI7P86/c/wAfoDwy5/vSdEUk2svEqdBUXPObqiio3AXYa9EF30/h1ssNUBmnvWF
 Yx0mJUnD6Md4iGBgv4SdjknmpuIpfxGOw0IrCmWSpvI7Q2m/qBrUgc56kq4Cgj3phxtO
 /I7XlQvbqZf3ws5cT2G1j3Gq375zRzu8Kr1TYtpZOcw6rGhl1EZCxNOmvB8wTdTETi7S
 WokH8CBDtkf/eWAsY1SUehD+7yY6hn7AAQaivrkh9ti5PcoUm8IAyYc/99xaJlJfIPwd
 Z6dg==
X-Gm-Message-State: AGi0PubFnsB5oAr3yhWQqP9YbSv49ZytihO6TC67up2ukNRCqD1mfTqe
 00ZuqHM51cP7oFSfPEWjqehQrA==
X-Google-Smtp-Source: APiQypLmtknqWg6mIBNX7BYpFLD0P6MpzAP9oT8r+HqSraCfQP4KlBhA65zzanXtvuiNlwwIZjxRSw==
X-Received: by 2002:aed:2dc1:: with SMTP id i59mr16899053qtd.182.1588889263247; 
 Thu, 07 May 2020 15:07:43 -0700 (PDT)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 10sm6045321qtp.4.2020.05.07.15.07.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 15:07:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH] kernel: add panic_on_taint
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20200507204219.GJ205881@optiplex-lnx>
Date: Thu, 7 May 2020 18:05:27 -0400
Message-Id: <27AA744E-930A-492A-BE87-05A119FE1549@lca.pw>
References: <20200506222815.274570-1-aquini@redhat.com>
 <C5E11731-5503-45CC-9F72-41E8863ACD27@lca.pw>
 <20200507204219.GJ205881@optiplex-lnx>
To: Rafael Aquini <aquini@redhat.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_150746_061288_62FC3B8D 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On May 7, 2020, at 4:42 PM, Rafael Aquini <aquini@redhat.com> wrote:
> 
> On Wed, May 06, 2020 at 10:50:19PM -0400, Qian Cai wrote:
>> 
>> 
>>> On May 6, 2020, at 6:28 PM, Rafael Aquini <aquini@redhat.com> wrote:
>>> 
>>> Analogously to the introduction of panic_on_warn, this patch
>>> introduces a kernel option named panic_on_taint in order to
>>> provide a simple and generic way to stop execution and catch
>>> a coredump when the kernel gets tainted by any given taint flag.
>>> 
>>> This is useful for debugging sessions as it avoids rebuilding
>>> the kernel to explicitly add calls to panic() or BUG() into
>>> code sites that introduce the taint flags of interest.
>>> Another, perhaps less frequent, use for this option would be
>>> as a mean for assuring a security policy (in paranoid mode)
>>> case where no single taint is allowed for the running system.
>> 
>> Andrew, you can drop the patch below from -mm now because that one is now obsolete,
>> 
>> mm-slub-add-panic_on_error-to-the-debug-facilities.patch
>> 
> Please, don't drop it yet. I'll send a patch to get rid of the bits,
> once this one gets accepted, if it gets accepted.

Why do you ever want that obsolete patch even show up in linux-next to potentailly waste other people/bots time to test it and develop things on top of it?
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
