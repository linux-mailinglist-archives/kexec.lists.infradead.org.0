Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B41B1AA2
	for <lists+kexec@lfdr.de>; Fri, 13 Sep 2019 11:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+4jiuknFuEbZQdg4hpquvuSa/M7A/tvvxnG1YP29lQ=; b=UDWb7uhmaAPSlw
	dZHbtMdkTI3JstH+gsbTJrevwqlE9hD5hmkodvuGFbJeW2D95XtNtq2rjrOsg7ku9nI7dmrcoi0s5
	Ff42XTyJ7iKhaJnzGljViBrOfdW+5YJ6rjj02Qh+zeuq/e5+yWMx9pjOTwkC81PtqYWcK97G41e2M
	CPZbrhu6ler/P8Ln5WYuLK5M0r6u+9T412LUgDAODmQIZbCTLaYJRcJoyINevs3AdPz7qvadec8gn
	+e8WgQkUgkijr4kIuUjhTe1idhTohdfWLQHpegyedmg8tWImQh1UQLPeiR+RBOfrDl18+2fZHI/sG
	QqM0bLw3xDeh2UFtXCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hig-0003hE-4c; Fri, 13 Sep 2019 09:18:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hiY-0003gr-7a
 for kexec@lists.infradead.org; Fri, 13 Sep 2019 09:18:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so31360983wrr.0
 for <kexec@lists.infradead.org>; Fri, 13 Sep 2019 02:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B2qbVDv0PuskCRdtWRYhRKpgVrVIXpDKIun6rvpjjk0=;
 b=J3IctKff/d1M3YwVS54OMQA1DBVNPZ13j5L2uUNaQZQuV8+MK8ntTIZmHNfBvly+XL
 QexEJ32SdrOEIL8EIAg5ysCWjnrI1P97yaypqiC3WOWjwx6jtPyaOQwWn23bmMta16zL
 WKAeVT1Hgr0puHt9dfuS5Dm5d7bv5sAjtdjTTWKmy3fWEzOzw3FfNJxgfUCLDp8ipBYR
 hFmGLyh7lbkumr3kW8r1dzT5gou9gW0BKnEcJ1jnm9ffqb4Qi5W7w+i5CW2WncofGHMj
 3l/6SxDhdzgmpDAOhOWNYLSkWv4PYftrDG9ilRQQLQVoZel7JuIvZE9MWIKzzErCToee
 vEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B2qbVDv0PuskCRdtWRYhRKpgVrVIXpDKIun6rvpjjk0=;
 b=JkBvn9poW0Mpxycte7okzaZQqw+9QXtCFzr1di+Nh0V1Sj7PhOW+LIXMDgS7z4em+d
 M8ikVFLYuuGLqOV2cXkKi+RWWoaW+Nt3EchtP7fx/KkHJVDIgoXBVxECfrlgJi/BSFOA
 oWoxiYA1C6ED+Kk3BVQnacxfS4WDeohC7ADu3eIkuGkWOCpwpkhLnNwKKDNGXnxB33cU
 pBgnA8I+Q2W+I0NO5l5Cose7MQp55fW1mOVMYD/+CTn34DdOAMXg1DngAEl++9vFk6DB
 23wemkT7X7x1Wg41gi2n0ChY0s4Kh2SJwdJ/vPsU+uk13qQSHxpnniMJtME5QQT+Ktfh
 kxfA==
X-Gm-Message-State: APjAAAV+OTlBLDZR9FbSrofFNjPRCOwncnmKaIFZd1ht2LNJVX4DmfaL
 05uBAHxH6vQ1DV9cSDfXb8Vk0bN6dP/gVuuHGyrgnbIfaBOPww==
X-Google-Smtp-Source: APXvYqy6DWYC+X9VNuJQwDiRZ7YIF4tjLsCmSiCad8jO+BT60cV+ZUTPVBYXBNqOFc3KzzraQOBh5+5bnQaOoA/p+Ng=
X-Received: by 2002:a5d:638f:: with SMTP id p15mr2337379wru.169.1568366291913; 
 Fri, 13 Sep 2019 02:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
 <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
 <CACdnJusU7FKPFTz9MbXWvs-NHLX7bPLwkVynyK6cLxbxCNjrNQ@mail.gmail.com>
In-Reply-To: <CACdnJusU7FKPFTz9MbXWvs-NHLX7bPLwkVynyK6cLxbxCNjrNQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 13 Sep 2019 10:17:50 +0100
Message-ID: <CAKv+Gu9_GDHiU2iBD7Lsk5dKupKBQO9Cfn3V2rhSU+DqQkAHOw@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Matthew Garrett <mjg59@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_021814_530639_AC252B7B 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dave Young <dyoung@redhat.com>, Laszlo Ersek <lersek@redhat.com>,
 kexec devel list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 22:14, Matthew Garrett <mjg59@google.com> wrote:
>
> On Tue, Aug 13, 2019 at 4:28 AM Laszlo Ersek <lersek@redhat.com> wrote:
> > (I verified yesterday, using the edk2 source code, that there is no
> > varstore reclaim after ExitBootServices(), indeed.)
>
> Some implementations do reclaim at runtime, in which case the
> create/delete dance will permit variable creation.
>
> > (a) Attempting to delete the dummy variable in efi_enter_virtual_mode().
>
> To be clear, the dummy variable should never actually come into
> existence - we explicitly attempt to create a variable that's bigger
> than the available space, so the expectation is that it will always
> fail. However, should it somehow end up being created, there's a race
> between the creation and the deletion and so there's a (small) risk
> that the variable actually ends up there. The cleanup in
> enter_virtual_mode() is just there to ensure that anything that did
> end up being created on a previous boot is deleted - the expectation
> is that it'll be a noop.
>
> > (b) The following part, in efi_query_variable_store():
> >
> > +               /*
> > +                * The runtime code may now have triggered a garbage collection
> > +                * run, so check the variable info again
> > +                */
> >
> > Let me start with (b). That code is essentially dead, I would say, based
> > on the information that had already been captured in the commit message
> > of [1]. Reclaim would never happen after ExitBootServices(). (I assume
> > efi_query_variable_store() is only invoked after ExitBootServices(),
> > i.e., from kernel space proper -- sorry if that's a wrong assumption.)
>
> It's dead code on Tiano, but not on at least one vendor implementation.
>
> > Considering (a): what justified the attempt to delete the dummy variable
> > in efi_enter_virtual_mode(), in commit [4]? Was that meant as a
> > fail-safe just so we don't leave a dummy variable lying around?
>
> Yes.
>
> > So even if we consider the "clean DUMMY object" hunk from [4] a
> > justified fail-safe for the normal boot path, it doesn't apply to the
> > kexec path -- the cold-booted primary kernel will have gone through
> > those motions already, will it not?
> >
> > Therefore, we should do two things:
> >
> > - Remove the cleanup from the kexec path -- the cleanup logic from [4],
> >   even if justified for the cold boot path, should have never modified
> >   the kexec path.
>
> I agree that there's no benefit in it being called in the kexec path.

Can I take that as an ack?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
