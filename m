Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7417D7F3
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 02:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20W50BEnjV2SOWdrRkUdd/VUNaHhBBLinqEKlJD0LAM=; b=WD9Zm6JC4e86RF
	uV2KEbWfrwgcEW/ZQzqUp5xOokIfGp63yDZ8+++PmWos+yDntsH5WUZg/+WVs8EfPu8j1XW0/ctVM
	gUt/DgFEcsUr2TZRxSKQm+KAylhNfh39JbC+stnHXffXmZihJimqiv4JmUW7pMTJ65FfYkQlQmMAc
	hIZ3yx6bKV6W/p99RGxrL0eD0vZJ9UcjAq5k3FTXwWpesr66I4KDvsP4zN3hQiltrFqON2/IYdwmm
	ilzwTykJK+NjcqgJ73d/JHyxq+a210wxiUK7lU3KY4JX3NSv5KwhC+XHrieypZCux1ygitzn8kAOg
	CHPnBZLoKv2sA2ch+e9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB7ZD-00021K-3E; Mon, 09 Mar 2020 01:50:51 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB7Z7-00020g-Ds
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 01:50:47 +0000
Received: by mail-il1-x144.google.com with SMTP id o18so7191988ilg.10
 for <kexec@lists.infradead.org>; Sun, 08 Mar 2020 18:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtUWtFnRoHixZyuZBmfMFJSnhS7OwKwOd9rd2v5oL4I=;
 b=dnuwCfeG/t41mw734KNixttlsP4BmWgr25tDfloN0vIS6NevgfyAzX8oMdvoyptrMu
 eVDg+qwMtHZPcQA/29yp4F0gPtceaPsD8EWhpXeeynjvg8o7Bd5UXmHAeJJaL1aXu6Sz
 +U3lUcHh7syEjhcG9MdeZ8fPYdiDRKMc98NEAvcIPQ74v5zlBiYbxcuNRzDS3Apmgycj
 KJV0AByrK2uZkGac2MjICk9csKhhL/hocgQw5kl2hMgVvAeL72KQ6fGYhcEuf+eTEGbq
 ZrKA7elhTuzHAV3FWZ0rgcqY4yf9+HCN9JcFhGj20gjQCYpw263MICaY69uUG2hz015n
 VnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtUWtFnRoHixZyuZBmfMFJSnhS7OwKwOd9rd2v5oL4I=;
 b=LgQUDrIRppSlC68Bs2r3DrD9/I0cTmswFZ3XQN3mMKaeiP92Sueie/iTiFNEcdkzHI
 CX0GypQV1Fmt87zjOqnPnRVABiCSwKgQEehzajsW8byI0jrgCD8Z9uJJDWsUOtvU3Fg0
 u8jy/dx92FyI+llHe+eTZ0KRHm3YWtoW/doPZKJyuccwX2K8fbiUtcAujeCu27N7Wgz+
 QigrJhRAvbamClGqDec1f2K4wyfi8yxsWWhFSvdr4RRzlXc3HbqdQrIwMV8Ow4bXHj4k
 Eu3DS/pjFjK9T3N7a4QhH/tIEmVrDsiedU6Fh6bb8N8C9am+YSQGrM/gBFQ8+1RSrgK7
 sUrw==
X-Gm-Message-State: ANhLgQ0StI6Kl8jZdyoPeiAreww9a9g6jKKfO+krCNFW1h7QkdNTq3+J
 xpLLzux7f8+fzELP7hXU+zCgVlNPf5I49d6hxw==
X-Google-Smtp-Source: ADFU+vsVBnt8ZTgQv2IfEnSGzp7zi6Vy6tMPwtv4Mf1WMHG9M71JasbxRNUZNKT8b3u1i+3BiI7Yg/7FPF5NGH3Wrt0=
X-Received: by 2002:a92:91c7:: with SMTP id e68mr13615632ill.161.1583718641516; 
 Sun, 08 Mar 2020 18:50:41 -0700 (PDT)
MIME-Version: 1.0
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-2-git-send-email-kernelfans@gmail.com>
 <87eeu5jlub.fsf@linux.ibm.com>
In-Reply-To: <87eeu5jlub.fsf@linux.ibm.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 9 Mar 2020 09:50:30 +0800
Message-ID: <CAFgQCTtJ=vK7Z02+kpDeu6Vjyi7=s2pE=PqCQ+Z0Y8yCPj3cpA@mail.gmail.com>
Subject: Re: [PATCHv3 1/2] powerpc/of: split out new_property() for reusing
To: Nathan Lynch <nathanl@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_185045_495094_B5EAFD1F 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Donnellan <ajd@linux.ibm.com>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, linuxppc-dev@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Paul Mackerras <paulus@samba.org>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Mar 7, 2020 at 3:59 AM Nathan Lynch <nathanl@linux.ibm.com> wrote:
>
> Hi,
>
> Pingfan Liu <kernelfans@gmail.com> writes:
> > Splitting out new_property() for coming reusing and moving it to
> > of_helpers.c.
>
> [...]
>
> > +struct property *new_property(const char *name, const int length,
> > +             const unsigned char *value, struct property *last)
> > +{
> > +     struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
> > +
> > +     if (!new)
> > +             return NULL;
> > +
> > +     new->name = kstrdup(name, GFP_KERNEL);
> > +     if (!new->name)
> > +             goto cleanup;
> > +     new->value = kmalloc(length + 1, GFP_KERNEL);
> > +     if (!new->value)
> > +             goto cleanup;
> > +
> > +     memcpy(new->value, value, length);
> > +     *(((char *)new->value) + length) = 0;
> > +     new->length = length;
> > +     new->next = last;
> > +     return new;
> > +
> > +cleanup:
> > +     kfree(new->name);
> > +     kfree(new->value);
> > +     kfree(new);
> > +     return NULL;
> > +}
>
> This function in its current form isn't suitable for more general use:
>
> * It appears to be tailored to string properties - note the char * value
>   parameter, the length + 1 allocation and nul termination.
>
> * Most code shouldn't need the 'last' argument. The code where this
>   currently resides builds a list of properties and attaches it to a new
>   node, bypassing of_add_property().
>
> Let's look at the call site you add in your next patch:
>
> +               big = cpu_to_be64(p->bound_addr);
> +               property = new_property("bound-addr", sizeof(u64), (const unsigned char *)&big,
> +                       NULL);
> +               of_add_property(dn, property);
>
> So you have to use a cast, and this is going to allocate (sizeof(u64) + 1)
> for the value, is that what you want?
>
> I think you should leave that legacy pseries reconfig code undisturbed
> (frankly that stuff should get deprecated and removed) and if you want a
> generic helper it should look more like:
>
> struct property *of_property_new(const char *name, size_t length,
>                                  const void *value, gfp_t allocflags)
>
> __of_prop_dup() looks like a good model/guide here.

Thanks for your good suggestion.
I will re-code based on your suggestion, if [2/2] turns out acceptable.

Regards,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
