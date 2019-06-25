Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60DD51F72
	for <lists+kexec@lfdr.de>; Tue, 25 Jun 2019 02:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xm3KqbsM3/kKrqfudjurFvOaU3ScBZM1oNNGCt4D+Yc=; b=ZUqWaXZ900N9RJ
	sBhuyNwB2s+MvqDhKAN5sZk7oQrqu58BUSh+DSDsVeFQSG7hO6DQf+2evguo/KOl+nzJfkjVbWEAU
	ay3uJiHiAggmGWr7qOxSqADfNjqWKAn2g2YmdQjmi3buzfv5g7foxzfwrHqxA27YekQT4EH58OnZs
	aNaY9JoEOPkULGAW7FVdgqBux6DsQAyxvrVyNb8RLKkyGLTKmU6d2N3yN2SjJB/j5d9IQ+it4HL1h
	22eef6nk+yk5+FdNHG6qCBkoIvj6E+ZbQFXeuideRv9y9EmdQTN0r/gGfRsT95CxswF7sxtUniUut
	Nntz27GBQhcyxajvvx9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYv9-0003OO-4S; Tue, 25 Jun 2019 00:02:47 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYv5-0003NG-SH
 for kexec@lists.infradead.org; Tue, 25 Jun 2019 00:02:45 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so47951ioa.5
 for <kexec@lists.infradead.org>; Mon, 24 Jun 2019 17:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zNvnHjVZLeBkwx5DnxrnXY0O9TQzHKxcjR8STK/P0sU=;
 b=bWPW7sdarMCTWE6gvhCS4q5QKL5i1C9X/hSDjFhEqHaKX+WmSlTqzwUceTojfRVNUr
 zywbp91SXq6A+duFsrFbDYbj+v+Wrx17PIIaCFMnm7d2JtOfSum3AYB7WHgA8AAbuqWi
 hxdcyYR4dlz2SA27CV8fZOGRzl4123Sx/1HlAj+2oOnIKDEFan1aaahPCrAuyRremyM7
 wG9vIE3BuvBF4dcemLdw/39QJTHX52qb1b1i5qvru5PYtN5F1Ddi1+RLlqP4D6LgArFm
 YhV6hPojZU+QHyRSv1M9+UhHbltHd3TKR3s4FtFGRmnuACTDOtQOa9aG51TNRpXrDb2Q
 9pRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zNvnHjVZLeBkwx5DnxrnXY0O9TQzHKxcjR8STK/P0sU=;
 b=htFsNufIlOkgMH+bw7J4kuhF/5pRbnZdMxYcUng0FBZ9SZr3AlhDVeQVOOlcYy5gJH
 QklaQJE8CB1XkNwp/oy46fvnE/YuHE4wxVZGBUv7F/9X3d+5kaT2pivVqbm8dzViRBm9
 1xuBPbeWEEkrBXhYSP64sJ8VGK8AP8mcqQ0wW8mWTmAA7YzfeVwyxAaP9I4dCg5w/g9S
 fmCVtDH3v4hjr4Bq5t0pwwzEQr2TQ77v2UhyVmdJhy1W5IbTlO1PUHv68ZdckUzBje2f
 HToWBsEBuy/DdepMuU9owD1522hEJ8N5pyW9jcqj1K2WdeBs55065ggYVhPWjIdzUJCr
 mlkA==
X-Gm-Message-State: APjAAAWiyTb4AW3cxjUKYJa/okKrdEPH2LHGEw0KJuq6oVHD6S4dwolo
 SGGRZicAMWMZYmMN7Hd60we00XG49bO7yELNh61leg==
X-Google-Smtp-Source: APXvYqxn3MVYC4ak7P+FllAR9bmNMszhCgsJC5oAjv3dI9GMqJC0QI1X8HPkw9B+ufAiKnMKPJqF/HKmWkQdx4h5yk8=
X-Received: by 2002:a5d:9d97:: with SMTP id 23mr3074338ion.204.1561420960582; 
 Mon, 24 Jun 2019 17:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
 <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
 <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
 <1561411657.4340.70.camel@linux.ibm.com>
In-Reply-To: <1561411657.4340.70.camel@linux.ibm.com>
From: Matthew Garrett <mjg59@google.com>
Date: Mon, 24 Jun 2019 17:02:29 -0700
Message-ID: <CACdnJuvE-MbD42AJTrio=0RaN8SaWo-RHHt21z=3an1vtjTFhA@mail.gmail.com>
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
To: Mimi Zohar <zohar@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_170243_948048_14B41915 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 2:27 PM Mimi Zohar <zohar@linux.ibm.com> wrote:

> I agree with Dave.  There should be a stub lockdown function to
> prevent enforcing lockdown when it isn't enabled.

Sorry, when what isn't enabled? If no LSMs are enforcing lockdown then
the check will return 0. The goal here is for distributions to be able
to ship a kernel that has CONFIG_KEXEC_SIG=y, CONFIG_KEXEC_SIG_FORCE=n
and at runtime be able to enforce a policy that requires signatures on
kexec payloads.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
