Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229FDAC005
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 21:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7eP0BQV4Q5SKVtx/rSq8rma9SpY7bFI1mpXRqlm+D0=; b=SNesWW0Z+cBDyM
	Y/H7avtkiC0DgBsHqnbV3oMYEEod3UtQKoW8lPVdreLplEyKxCl5uzW9W5kAUEnXEDnu4U0LL/Q4u
	PCjUz3F1dr5twFZuPYP6WpUxx0ULZRWxTnRe0wMaCzl2/XV0xPqUElXw3ffO9fJBIXiXAIyd0c7vY
	OnNY2RJS554yHskFm/Pkke9IxW37VkuxwAxLMxLDA55otbHBh0Ah0QO2PS/AJVzyT8Pw6/FtiPDW7
	kJgv+2zw31OT01PNfs2wYS96sqbIRy6cZi+oc4zc0qvk574maQsoYn4/4WMHln3FduI4bTKOIkEwh
	0t9UyKf+eq2xlZxtXFSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JT5-0005I6-VN; Fri, 06 Sep 2019 19:00:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JT0-0005EZ-A8
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 19:00:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id t50so7258799edd.2
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 12:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LrjX9gD4VIauKO9U5B9UI5Q0lIvPgAd5pEYZKOh182w=;
 b=E1edasldtuMUUwkDEeQ56lGV0qKHCc+ezSSI7PED72qKwm8givcI1UCheonDF+81rU
 DZOhA3PS5YT2Z+lRz68MmcNRorzwGoqu0KRyVhZh73RM5K5J8t3dDYLms/P0kTbvPtec
 7X0KIeg9UYHi7xjL3yLM/8gmOM3hLlwYmIHLEfMReHliOIdzcdvn9E3msksKAtQuGev3
 ToWGr15CVcoDF6P+lIE/dr4tO9E1aQqZPQUs26CFG4bEXIw89ZNUvP34ZpJRGdaObYaM
 GKhb6NJJySchkPl9O+1tmmIYBIgS1VoHFBQ5g7ReLTaEQvcU+kkN7J8ip6j/ozSYTNfg
 lfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LrjX9gD4VIauKO9U5B9UI5Q0lIvPgAd5pEYZKOh182w=;
 b=S/6HyN/h8zSDKU/01IvNWj0ajdUg6BCLoQDJ/Lm77zvPz1bcyuv4Fbhci5ETlXeyxL
 XtYyATYdYVFZyOOzQWpOn/RSEPnPRE/DmNNyrUSUUJgU+kJOCyyNxNNAdf9Ue8I+N3fS
 TCTErcrBFc3i/BB3Dgr5rpqbFZ4smWSMRwzP8b744yOVVD0qq4sNMySE1JuxgeFJEQwx
 Py/8yBSoJQ9W0A+6LLjFPII2n10WIBcHxEyQnluHPUTCG0mBOyat+B40fgbQMW2iWBvs
 8bxXL5l8TnBmrZgAKsW9lJqlQu+A26UL0xwiuENyl9opMAyPh4GABpiS+B2RCYjfkzys
 K96g==
X-Gm-Message-State: APjAAAVZIgfSCSs1/0Z/kdRYkl1Pdjo6MnwvnPaAm/e5F9l6xra7SeAj
 CBUPul9Bv35PggsDIoGL8VMAPzRPwdELRF2kbSwCBw==
X-Google-Smtp-Source: APXvYqySdTqXeFzwKDdERIUW6O7satVNK6R7jE0J4FvXnhmNRURLOur3h+Xuy9x0CmE+4eeQW35qwli0Re25EqwHAFE=
X-Received: by 2002:a17:906:bb0f:: with SMTP id
 jz15mr8571853ejb.264.1567796416697; 
 Fri, 06 Sep 2019 12:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-10-pasha.tatashin@soleen.com>
 <2d9f7511-ce65-d5ca-653e-f4d43994a32d@arm.com>
In-Reply-To: <2d9f7511-ce65-d5ca-653e-f4d43994a32d@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 15:00:05 -0400
Message-ID: <CA+CK2bAkimTmsj-iGVq6AkMMNAb7+J5wm-Ra-qovS+3Ou5j33w@mail.gmail.com>
Subject: Re: [PATCH v3 09/17] arm64, trans_pgd: add trans_pgd_create_empty
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120018_359694_9D777767 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

On Fri, Sep 6, 2019 at 11:20 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > This functions returns a zeroed trans_pgd using the allocator that is
> > specified in the info argument.
> >
> > trans_pgds should be created by using this function.
>
> This function takes the allocator you give it, and calls it once.
>
> Given both users need one pgd, and have to provide the allocator, it seems strange that
> they aren't trusted to call it.
>
> I don't think this patch is necessary.
>
> Let the caller pass in the pgd_t to the helpers.

Ok.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
