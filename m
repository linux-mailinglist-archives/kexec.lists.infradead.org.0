Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D926BE192
	for <lists+kexec@lfdr.de>; Wed, 25 Sep 2019 17:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKuY9AtTZ4fZ/Arb5DbUbtf1Kf7wMCBf8VrldR3k01c=; b=BCCL0LcOZZSqAY
	zHEppgX+JYg8H2B8auVqMNJlf7B7gtPQFTzWo3U/299Lsk8BMOj9Ro7q77+HfWm8Dgud9zb07h8P9
	FAj5z3KF7VNRCk9erZGWJLo3Ti1+nl86iN7rBQNuQdu6JX/T8f3uxI/v50C/JDAY511+COTPXFMZh
	z10Xhh0om23XP3EaAwoxH96kXWtDJHEqNyGCa3A9ckUA+cmqR290pyhaymMet7A1POgjyJOTKUCVH
	qCerrpkOYD4vK/GSDeuuJ+GiHZgwd1oRjJRKEEieoe1a2aOVQcUJ6YR0+R3hiTobxcIVXtgu9Pvn4
	2EiCewnaK5A2wQLvD3xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9Td-0003x4-O5; Wed, 25 Sep 2019 15:45:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9Tb-0003wk-2D
 for kexec@lists.infradead.org; Wed, 25 Sep 2019 15:45:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so6303394wme.1
 for <kexec@lists.infradead.org>; Wed, 25 Sep 2019 08:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XTR7opx8XtUzSKfmu/OncKGlssH76YIMBSCYbQ3jfhE=;
 b=G2xFNeMxWUANvAUEsTDkmNPRjto3SVju/Ja2WMJS0x36Mb87TD9lvSzxNdAo+VeBWE
 G0WRxSt/x0kGAcBBjfHy2eZ4IMxtp/cLIyYV822n0bffriNVw6X1DI9i+gcxWQtLO9ei
 0b3myl/kMiFXv4Es1DIc9JNjtUHbRh4plybHWRmZblcx1OA8pEZkwnv7dMfG1XiltHnh
 Ta8Cxm16B93d47wA3XV2P8OurfFyNAqRfSGEcODAJew49AuVhrPQAjt5YSiUUT5LBub/
 hVDI6h3L0IgykYiHa8+rOAw0BdAnSvIztaYXsTeXNkUmiHqQf548MjKTllQZSizPnEL1
 x3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XTR7opx8XtUzSKfmu/OncKGlssH76YIMBSCYbQ3jfhE=;
 b=KCcLELUTe/1n+Zm2YO22RZHr//XrAOJdYpWZDMkGA/8drqT7u4h61bEpNf1NPtYav8
 esBz8DzStPmdbzQZM9RC0VYCl7Fiwx6KhbUPkF5PG2MidctdgOm/+OmNzo1eo44Oajef
 avvpwxGrw/JhUzYZGhhHMYNb4AxBJ80OcdnOlMGjifK5i8/J0iDujbvfEmesxfh2mrgr
 EkgWaF9skihV293OOPpGs5PGHvNKQJ3cTcn7CHKg73nA+d2yMOzPb00s5CzpuoZzzGyI
 CPNxCY3+knyJ+SSLgvoc+pS0vEtFSUgsRaVbLkxuI2pOz0uYW8bNDpL4YgAR4dxD5CZo
 UWfQ==
X-Gm-Message-State: APjAAAXD55JwbPiD4yIZGLp0Cdr7vNHMi+iJM5C6xuomGKep4pO0U9PI
 TMJpUBrOogc3aIW78cZUoya7DjOr5OET+CAfOc01kQ==
X-Google-Smtp-Source: APXvYqx8bRL7gV1Z4rwLIo/JOGDdJfwCpxei6MSLVTWtn81Q7e7msazttqUFt+oCgP+AAw8SHMteTPbywQaHmITrroI=
X-Received: by 2002:a1c:e906:: with SMTP id q6mr8063042wmc.136.1569426309365; 
 Wed, 25 Sep 2019 08:45:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
 <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
 <CACdnJusU7FKPFTz9MbXWvs-NHLX7bPLwkVynyK6cLxbxCNjrNQ@mail.gmail.com>
 <CAKv+Gu9_GDHiU2iBD7Lsk5dKupKBQO9Cfn3V2rhSU+DqQkAHOw@mail.gmail.com>
 <CACdnJut3t+TNLKg0=hUEFCT6wXmJtE2ju1hg6tuXue6L9Bxp6Q@mail.gmail.com>
In-Reply-To: <CACdnJut3t+TNLKg0=hUEFCT6wXmJtE2ju1hg6tuXue6L9Bxp6Q@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 25 Sep 2019 17:44:57 +0200
Message-ID: <CAKv+Gu-dPZNGoH2TzRTuh5K6rwjZ87A9z0NhQaJ_8Ef3RXVtUQ@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Matthew Garrett <mjg59@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_084511_121130_8F5B694C 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dave Young <dyoung@redhat.com>, Laszlo Ersek <lersek@redhat.com>,
 kexec devel list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 at 19:52, Matthew Garrett <mjg59@google.com> wrote:
>
> On Fri, Sep 13, 2019 at 2:18 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
>
> > > > - Remove the cleanup from the kexec path -- the cleanup logic from [4],
> > > >   even if justified for the cold boot path, should have never modified
> > > >   the kexec path.
> > >
> > > I agree that there's no benefit in it being called in the kexec path.
> >
> > Can I take that as an ack?
>
> An ack of this hunk.

Given that the patch in question has only one hunk, I'll take this as
an ack of the entire patch, and queue it as a fix.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
