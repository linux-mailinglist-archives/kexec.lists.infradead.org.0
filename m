Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C34ABCBE
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 17:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB6A/jODFZl0yUCs11A9amnecdmNB/cTq9sizIwklGc=; b=YNi/x73ZuDnS/N
	2QHsfWmZAvtEepthYQuoIsXyuKtTvcgkVi6I7ig4XUrNnlMZzpcXVLol32CHGOMHWiNaHKdRrrFve
	ypY4xtHnxaZkCZfo3WEqhqtWKsHjxtGWJXnFa7EvKR4jGU6oqn4vw8SmUtYPlLGp+CFVrBJuqF+rJ
	gyutt+l4Zl+KgVFzVbGg+O2tPj7i2J/nyKjmWJCh7lHwe4cSZBIivXSvUZS2WIFQnslRzWtYtugae
	eXy48KkjVXIOLAwiNuzxWLBddyHaTQj+E7LVQXiPNZtN7RIBVeibtk93mVFCYmLafaw8VI7Iq3tN2
	NuNb/z0XIo00e3hObxRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GLR-0005nh-Do; Fri, 06 Sep 2019 15:40:17 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GLK-0005gD-ON
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 15:40:12 +0000
Received: by mail-ed1-x544.google.com with SMTP id p2so5509394edx.11
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 08:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CjF3fwI23SGTIbsZbebpupUjHvggvSShXHb+f7gohRg=;
 b=X+TZLFq+/8fiOOZaSxM4o7weyYJJYjKBVTcRCZfcxr2IxHAce/BmJfEXlo+kHisHhF
 mlpMhUTxWtcXV/LgdZFzuY7qNCrZaKMw8ItKcgilp5WTkQNFuCtZgPd4jGMxpgeusHKy
 +ahYXFtlTF+mSXTcvIEKTHM34JZSa4gUxMyQbY9ovXkeE1DqzeHziy0kVUOT9HDoGgh+
 86qEcJGuBwvEp64MJNk43vufsS6oXhTwJOTInG+rMeHXceUdYHOhY8j0CA+yEADsDreV
 fxhYTUKSD4lXhNC87Jhmdi20O2F9lotiaxFikDlzOtV2OTRHPhktK0wYcLrfjjdxvON+
 FoEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CjF3fwI23SGTIbsZbebpupUjHvggvSShXHb+f7gohRg=;
 b=Rc7bvoNIhUES2HQ/ZyEfOOAaEN9CgoK2ZupyZRifT4LHbjkHYXcRTlhi/NB3vzvsbS
 q0NRwsGtMorhCtYf1cGQ+dEI7egOg1UbnMBX9Hys48UY8ABjGwb3IS1Lo76bGl/lnwX9
 rVKZybtR5eeC+TvK6AYxEyAmrU0PBsWqvbpwkAXJiIXjNPwMZ+6Hc2H3FXE0IiX7BZSS
 evdjOWfNYltHTnbgAyPJO1KqoU8e4uCOyVgERwV1wk20xO8bW7PrqD/g2UGIuEmuebGj
 Lmt5MkkYzfe2s2CA1T5Un0UQqTCPq3pVJvsSnTfPu98jq2pwgo99+J2rSkMED9AwzQjy
 +anA==
X-Gm-Message-State: APjAAAW6ObdUbn/7uw8Q9y6iUYZrjZMO9AGNxDO+l3JTqwJFPJX0nU9v
 OJYK7XMrd0kFaRXztmwIMrAu5AIKltQpIl09LHPEvg==
X-Google-Smtp-Source: APXvYqwgWEKdsXXZDKUgZfHTTS/3PBS/mpsvU7NBgD+cDEAZM2KkwC32Gcr7KkyJWBr9wuGwTdTO2+WUmBcm/dqbcb4=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr10239139edv.124.1567784409076; 
 Fri, 06 Sep 2019 08:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-3-pasha.tatashin@soleen.com>
 <dc6506a0-9b66-f633-8319-9c8a9dc93d4f@arm.com>
In-Reply-To: <dc6506a0-9b66-f633-8319-9c8a9dc93d4f@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:39:58 -0400
Message-ID: <CA+CK2bBgUH8v_bYEyJKPsLZFDxse6xYRwGR8KN=SzgHnrR9yhA@mail.gmail.com>
Subject: Re: [PATCH v3 02/17] arm64, hibernate: use get_safe_page directly
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084010_842046_D1CD16B0 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:17 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> Nit: The pattern for the subject prefix should be "arm64: hibernate:"..
> Its usually possible to spot the pattern from "git log --oneline $file".

Sure, I will change here and in other places to "arm64: hibernate:"

>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > create_safe_exec_page is a local function that uses the
> > get_safe_page() to allocate page table and pages and one pages
> > that is getting mapped.
>
> I can't parse this.
>
> create_safe_exec_page() uses hibernate's allocator to create a set of page table to map a
> single page that will contain the relocation code.

Thanks I will rephrase it with your suggestion.

>
>
> > Remove the allocator related arguments, and use get_safe_page
> > directly, as it is done in other local functions in this
> > file.
> ... because kexec can't use this as it doesn't have a working allocator.
> Removing this function pointer makes it easier to refactor the code later.

Thanks, I will add it to the description.

>
> (this thing is only a function pointer so kexec could use it too ... It looks like you're
> creating extra work. Patch 7 moves these new calls out to a new file... presumably so
> another patch can remove them again)
>
> As stand-alone cleanup the patch looks fine, but you probably don't need to do this.

Without this clean-up moving to common code becomes messier. So, I
would like to keep this change.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
