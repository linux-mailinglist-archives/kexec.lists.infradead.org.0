Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133298C365
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 23:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5Hh3lbGmj14nJ9hd9VrF4tvsbMWA8FwDzaTMoyzIRk=; b=mtjA9gqBWAn5iN
	05Jk87p08E3HNW4IdUvm2tawLM+Qr6X9X0qOzukPtEdfmx2Wo1hKMPSzqynQFp0NbyZrqu02DGMqR
	nDgAicMHDE0s1GkWvysiiPGFYYV8Q2L69xeBZ76TUlASj/bHqKRpwbpQ54JXMLklT2Gq6LmxKUgGA
	kv38lNOMROgk01tlKhA9cdR5zHCHx/jXxF+D+HbClslXCFA1cLgIB+bhpajGbJTcYv9RVf5jfIEts
	/xJ65XqUK/poLo4FOVxZgi3X7ppMF7FaRF3807Db/IFBkQVflj5CT1AQhad8SlCuJRc7Emi3WfxBh
	Hmc0/KQsRyrjfht7w4Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxe7y-0001rf-0w; Tue, 13 Aug 2019 21:14:46 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxe7v-0001rL-JD
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 21:14:45 +0000
Received: by mail-oi1-x244.google.com with SMTP id k22so739889oiw.11
 for <kexec@lists.infradead.org>; Tue, 13 Aug 2019 14:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dKDSmvLGlrQvGQ3HAcUc+jYZcrzOl6LEyzfOGmw66eg=;
 b=wWaZ80E8ic701AwAMCLjx2TnGOAHQCCFjXuWurI2gm+VOYbBbczSg5i2dEyfQtT5pW
 79rEMAT8Utt5JAUNpwPx6MfWZrUEmJE2KeH7D+W0KhEW98BT4aEA4zky18YxUcIXLtqS
 hjeampT6KRv8p2kTtPu0cKl6pG/nVV1hYnWxKcpD2B6ODv19vOc30bc7R+LMyxmXWk0w
 rzu4etwOfBjJ/Uhx5q22XVKLzvE8q91xCx2zSdVk++ArxbBTvUTyfOFC3ag5+iG/NKWY
 h36q16QytfL0L6o7aaUamXNk83WLpMP69XB9sLIvkjS1v9ME4ovoYLgHep61INw1rs3p
 OK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dKDSmvLGlrQvGQ3HAcUc+jYZcrzOl6LEyzfOGmw66eg=;
 b=gRSoThb8+lGOXNkP8KPUc/C+f6+7LCtrsXnwi9t3BblKZUyV1CvZB7F6rSFPT+30Uu
 Hh70G5jbl6a/DIdLQ2Z+7O3gtzRQ0FxvkofmCk5GG6IBFdJos/D1Y0vJQde6p7wuqZFl
 RG5y8Vk3jTESaIxz4AZmTNOWH/qsDtbTvSywWTeZ4469QbyMzsJSOjT4BDqWfuK1suC5
 /zMF1L6yk5AnlOTgQYqhcLCEMb4lc6hSeYqtoark0fMxKMoBWIxhhoqogF7ynvZyr197
 +5QAIqBgMfAmgF5g7EwvrCDPAdpwCg5N1dNOhk7GYx2AMk3PoV9O//uKEon5Za1L7biw
 KG9g==
X-Gm-Message-State: APjAAAVwl/bw710752LD55CV+d/CapNiONXycvjqekXbG8CX0JCpIJwI
 7MPTcOnGKj29Cg2U9VXaCV3jjEQuJogrkL/sBnjwqQ==
X-Google-Smtp-Source: APXvYqzVA2T7ZdMRzxhi8u9+3TJma8PehaHGmmSWdzXEUAgIpTkSR/LYHzF1VqJEAa6skkBtzpfGgS5WHP4LS0znqoU=
X-Received: by 2002:a05:6638:303:: with SMTP id
 w3mr44762939jap.103.1565730879632; 
 Tue, 13 Aug 2019 14:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
 <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
In-Reply-To: <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
From: Matthew Garrett <mjg59@google.com>
Date: Tue, 13 Aug 2019 14:14:27 -0700
Message-ID: <CACdnJusU7FKPFTz9MbXWvs-NHLX7bPLwkVynyK6cLxbxCNjrNQ@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Laszlo Ersek <lersek@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_141443_660916_2B13D58E 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kexec devel list <kexec@lists.infradead.org>,
 Dave Young <dyoung@redhat.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 4:28 AM Laszlo Ersek <lersek@redhat.com> wrote:
> (I verified yesterday, using the edk2 source code, that there is no
> varstore reclaim after ExitBootServices(), indeed.)

Some implementations do reclaim at runtime, in which case the
create/delete dance will permit variable creation.

> (a) Attempting to delete the dummy variable in efi_enter_virtual_mode().

To be clear, the dummy variable should never actually come into
existence - we explicitly attempt to create a variable that's bigger
than the available space, so the expectation is that it will always
fail. However, should it somehow end up being created, there's a race
between the creation and the deletion and so there's a (small) risk
that the variable actually ends up there. The cleanup in
enter_virtual_mode() is just there to ensure that anything that did
end up being created on a previous boot is deleted - the expectation
is that it'll be a noop.

> (b) The following part, in efi_query_variable_store():
>
> +               /*
> +                * The runtime code may now have triggered a garbage collection
> +                * run, so check the variable info again
> +                */
>
> Let me start with (b). That code is essentially dead, I would say, based
> on the information that had already been captured in the commit message
> of [1]. Reclaim would never happen after ExitBootServices(). (I assume
> efi_query_variable_store() is only invoked after ExitBootServices(),
> i.e., from kernel space proper -- sorry if that's a wrong assumption.)

It's dead code on Tiano, but not on at least one vendor implementation.

> Considering (a): what justified the attempt to delete the dummy variable
> in efi_enter_virtual_mode(), in commit [4]? Was that meant as a
> fail-safe just so we don't leave a dummy variable lying around?

Yes.

> So even if we consider the "clean DUMMY object" hunk from [4] a
> justified fail-safe for the normal boot path, it doesn't apply to the
> kexec path -- the cold-booted primary kernel will have gone through
> those motions already, will it not?
>
> Therefore, we should do two things:
>
> - Remove the cleanup from the kexec path -- the cleanup logic from [4],
>   even if justified for the cold boot path, should have never modified
>   the kexec path.

I agree that there's no benefit in it being called in the kexec path.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
