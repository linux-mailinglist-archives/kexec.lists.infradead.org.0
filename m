Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA75458E6F
	for <lists+kexec@lfdr.de>; Fri, 28 Jun 2019 01:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yR2MTcQjE6gTfNeOCuXvV2E3UnSE3oNfTftRMGFmGR0=; b=R8yL1xfuBvpF9B
	MTtxxrjpMvx9DNny6ukoT0z3OJlp5zeqk5oZ1b7g5mR44mzhyWETu9VS0mPSCB/bVr3zD9nbHKrZn
	X7B142YFRnlDQc/nKgn0U+vyIFhrosU/LUY53/CO2Qv+Qjx9/2bWZ9bgjeHXbrhCHWm0BE4czUpIR
	Vf6tyRizAubUek/fFqgM5gnlCy2eeFV2ST4+ETIX086UMMHp6+nlOA8FvAzQjOaayX2x56+Tf60Zu
	fmxoKgA6JvTP95MTaX/nlnZDWPU75gt4676jGkWDQUorLHdrYUAmtejdqsC07KO/U6lUldh/dEVzL
	tNkDqswV9CcI+CyXz1Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgdeW-0004e9-Ba; Thu, 27 Jun 2019 23:18:04 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgdeT-0004d7-8t
 for kexec@lists.infradead.org; Thu, 27 Jun 2019 23:18:02 +0000
Received: by mail-io1-xd43.google.com with SMTP id k20so8487601ios.10
 for <kexec@lists.infradead.org>; Thu, 27 Jun 2019 16:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1ALt8d0AtAjsRjrBD8rKsbA1G2O0Y0X5Cg7cv209nE4=;
 b=aU9s6q0Gw5jxFhUMjcSh770eZamw7jwmsQtPSF3OsojwjJFkj/vdbzg1uaasp6O8oC
 5Lf3Iylyam/fkMhb8IeT/68P8BTYkIsHI7vQ1GPqKc88kecKDHl2WC5/8te3z2WBI0Qn
 GcvLKKGe42nXpXjVYDLUDxBy0h88aHmFLnnxMaBSeVl0DYkoN2HA9rSmkVseW8dwgwZT
 vq+yckoAVxXmA1g0SqgcQ40WeZxmKDNcr597rc7c0Hek93KVhbjPOLKlC3lbT9+wUCJ6
 2ANHgiLq+yJhPrxCs/QctQgXz782a+MotcpW5OxWyVZWuus/ZiT/xHuN/4vSOSGpSROl
 c1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1ALt8d0AtAjsRjrBD8rKsbA1G2O0Y0X5Cg7cv209nE4=;
 b=G2xhgHIfEaq7EFSAHoT0h3mNhFzRkdE0yjj2XR8Q9QZXreyYy+iWAgtcNr3j6Hrdry
 2cB67g2CFvCztuzWh5xMvTYD4F9wEyIgjHMbAALB+S9XhqZDY+YEN5HwKUWz4U/la7H3
 OFccGTKZy1FT9h8E+vtUULiByxm075iVJnH6IpALSA1Ixp0y6J2+0kGHJyQJqbBmW/UV
 E6m3H1ufVTBfq6+nAmQ29cKwoV7OoznhqUoykG1gfwbNx2rMQBHdrDnqgs/ll9WOw5ls
 ajsrn9q3gFHm2CZYrPe5w/3whZXcDOuEmofTdikn5C6JVjSzdjWYHrn8dEb3OYpywxq+
 wR0g==
X-Gm-Message-State: APjAAAUTMgM0gHj9237aAVBOlks8+ohYTEQY/pQIyum4u4XuhlUJEGRg
 2G5+DmqxxxKaaO+plTdmmnFMXIW5m/9hsTtfSDUaZQ==
X-Google-Smtp-Source: APXvYqyOUB8xbkKRjPyKPBurKBA+e3hSaS/yPPQW2nJi/+xOea08zQ3i0BDwUHECu+YT1wis6SvkIp+6xGsGO0jzQ9k=
X-Received: by 2002:a6b:8dcf:: with SMTP id p198mr7960681iod.46.1561677478172; 
 Thu, 27 Jun 2019 16:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-10-matthewgarrett@google.com>
 <alpine.LRH.2.21.1906271423070.16512@namei.org>
 <CACdnJusJeCYPKVFHiu6yn+mfqQe5k0RqZhbCUZEkxtXx_shMmw@mail.gmail.com>
 <alpine.LRH.2.21.1906280411370.18880@namei.org>
In-Reply-To: <alpine.LRH.2.21.1906280411370.18880@namei.org>
From: Matthew Garrett <mjg59@google.com>
Date: Thu, 27 Jun 2019 16:17:46 -0700
Message-ID: <CACdnJuvRtQWFknzxLwKc6erCBZ3+6tXmabEdRuXXGTGrYEAp6w@mail.gmail.com>
Subject: Re: [PATCH V34 09/29] kexec_file: Restrict at runtime if the kernel
 is locked down
To: James Morris <jmorris@namei.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_161801_315094_CA8268B5 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:14 AM James Morris <jmorris@namei.org> wrote:
>
> On Thu, 27 Jun 2019, Matthew Garrett wrote:
>
> > By that metric, on a secure boot system how do we determine that code
> > running in the firmware environment wasn't compromised before it
> > launched the initial signed kernel?
>
> Remote attestation tied to a hardware root of trust, before allowing
> access to any further resources.

If you use IMA you can get the same guarantees over kexec.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
