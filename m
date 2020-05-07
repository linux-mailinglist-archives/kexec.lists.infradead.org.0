Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5729A1C8028
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 04:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zprzRRztDz+Cq4RHOeAhnjnAtoAgxdOVSNRy5gvBD8=; b=AFuAqy3jijOYHn
	0qGA72F/2LhA9PS1xUiqwrv90wzTvMrfSbatoaNAsEz4ysq+0bdpAA1r2WfpCJsxq8lMTSibae1bd
	WmZCrDrmFgZ77WXmCjIayDDHNJpILzmgl4aZ/JqXotEHvoBsJZOml8BkLAaGwA0iZN3QAzzkfhLpw
	QSdFfIiYWyRrUYLBpeThiVoaGrlWPpNWPb6Y8sqZSJ4hjG9xZzT1MmGUu8q4MN6AUU2eDxNqaVOWD
	ccoC6/cyxOUIGqjlB1XahwXB6D527Jzsa8PmIkIWiRTBHBehIC6EmGrcsslKYUdQ2n9qiNtxpOAeW
	pMTEyZlq22daBcMKiWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWWcD-0000vR-TQ; Thu, 07 May 2020 02:50:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWWcA-0000uj-OT
 for kexec@lists.infradead.org; Thu, 07 May 2020 02:50:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id x12so3514763qts.9
 for <kexec@lists.infradead.org>; Wed, 06 May 2020 19:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=v5p4G137YuitFnxAdjJGDeWrlR5PjlajIuvgc0Izz2k=;
 b=p750SKit8Chs8O2JezORAPJP4t47zmSpkpleyDhzPywZlEJsAjOgD1QOW2EMlvn+BU
 uUhq4taDMrPJ9oMxWXeeGRQmFme0e56qiaJtXl1HeHxNKv5VSarf8JeQy8150L7SOMcQ
 N6ggNiN+Ch3wUcnHtpQhOBQc6Dao+VF13YpZDf5joeWA7yujT6zP4AUdBvGwTkL5O2W/
 WNuDFPqSWKDMBboXLDy5YrC08br3dkGkUDFV8/wuR5nQ/jVvlGBukgFucJT7oiWO9twE
 f8BaYKqyQI547ysjYYYd0UldV8tUpnUIi0NDYTZWPxM/bAYwmkPA8f+jUiufYRfJkjXk
 HKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=v5p4G137YuitFnxAdjJGDeWrlR5PjlajIuvgc0Izz2k=;
 b=BZPB13ChOyBPTIdAT2yXONx8w8OlBL0UlxVVUhCpsAtyQiRftumWW29vVauktw+Eex
 XCiIx1YPoQuVtac4YwKef9d3IZSMRG2S+eKA0kFdCSsQKRAX2Dbsiar0fe5sa80m7Zdw
 tTd8aPPFiIBLgRnaSFtFoT3YAn73xsiF94d1bQq3SUP1I5//VMxXJOL5enm5tpClusvv
 6lDLi7AS1YFR6qDT3Mh5Cd/XjFEU5i5V95bddP4CQoLhefLrYt/feSN1/y6F8Egk1eBQ
 Uhj9VKAzChjqofkEZAXv+NWDjPzQvomRhIRaIuaTYVp7xnhTr5S0uHsBPGfH+O05r9vP
 99XQ==
X-Gm-Message-State: AGi0PuZpwYbyCaMVe8QN8Q+HOyvVMlaARxwwzLXLPd2Dvk9vdfaz/qze
 S1/aq15VqSAri4ISqh+pHPZzjw==
X-Google-Smtp-Source: APiQypKxWi4AkhGDT+GZggTnrZrPgUKz0gOo0rLAfbuL7zwLe73GZWVPmGUFdEpd/zUZxCk8YGaGHw==
X-Received: by 2002:aed:3ffd:: with SMTP id w58mr11966424qth.21.1588819821027; 
 Wed, 06 May 2020 19:50:21 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id y18sm3363851qty.41.2020.05.06.19.50.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 19:50:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH] kernel: add panic_on_taint
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20200506222815.274570-1-aquini@redhat.com>
Date: Wed, 6 May 2020 22:50:19 -0400
Message-Id: <C5E11731-5503-45CC-9F72-41E8863ACD27@lca.pw>
References: <20200506222815.274570-1-aquini@redhat.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_195022_848867_4FED9D3F 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 dyoung@redhat.com, Rafael Aquini <aquini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On May 6, 2020, at 6:28 PM, Rafael Aquini <aquini@redhat.com> wrote:
> 
> Analogously to the introduction of panic_on_warn, this patch
> introduces a kernel option named panic_on_taint in order to
> provide a simple and generic way to stop execution and catch
> a coredump when the kernel gets tainted by any given taint flag.
> 
> This is useful for debugging sessions as it avoids rebuilding
> the kernel to explicitly add calls to panic() or BUG() into
> code sites that introduce the taint flags of interest.
> Another, perhaps less frequent, use for this option would be
> as a mean for assuring a security policy (in paranoid mode)
> case where no single taint is allowed for the running system.

Andrew, you can drop the patch below from -mm now because that one is now obsolete,

mm-slub-add-panic_on_error-to-the-debug-facilities.patch
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
