Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A1C1C7243
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 15:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khKeXcGA7VkDJe3GFcpyepZDXDewRJTsTgGBH11fdeg=; b=OGyQVMit5JGpUW
	BbfbU5lB4KeFy3WXIlUinMqvM5FGUU3FVTBXn+ZK9zP47QyimmtBaJqojogyx2eN7J1bhleR813H3
	42fBzEkc3MOFE3PE0EivtKpSPM/CVqgDK8kz6Dg9/vQB0L9pMfEsLtPO0B+HezUMmbCr09RsF+W2p
	V2I+7Fif9Yjq6zNXftyfE05eQfGd9qgilLW4QpPoQB2TlAxYOOOrtqX4Au3t+Vyw0weB1Bz23aBZ5
	zLkZpHpW7P306gZsJAg2iGLiRDbvgOWclon5M2oLbFSJclJFRTZXBfrRwhZUkCD6+9xrFYVBMZIUi
	/pTT2bMTjMaTvvRsk5og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKYC-00041v-AA; Wed, 06 May 2020 13:57:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKYA-00041L-2A
 for kexec@lists.infradead.org; Wed, 06 May 2020 13:57:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id r26so2797293wmh.0
 for <kexec@lists.infradead.org>; Wed, 06 May 2020 06:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9xxwlHsLDdr/018bY2TiA68tltVHydrJNhbqNoXLbaU=;
 b=Y7SCliGwj7h20Gk7fJZNp6xUGHU7EDL4FWzGSnxo+G9pSsXIMlhbCq68+JvrrXamOw
 TMQ1VnHoUAOFPBZXAJZ3RUuV6G28rlc1koZMvkLlRfiNHoT1WQdeD+mQwlYVJMelaP4d
 vbG44T7/5OJfdOM6zzRl20AsLk95UkoDQ+ClE2YJxAq7gAHs5tMx1dTGqExoFoz0hrwp
 Kjc1141FsXnu0jlcqG02VzoKefaenvBRpcfqxAZuKrmUS0VLJZ7a3DHJJkSTXDQtsrtB
 LZz3AKHpzjQ6SkBPDoNAoxH3cMjjg5e3qZRSkPYvrWuu/APxBTHPeb6q3oQrbrynGc0B
 GRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9xxwlHsLDdr/018bY2TiA68tltVHydrJNhbqNoXLbaU=;
 b=ixDjTl4sJVxX+tPA6fPZDBMg091zsq/Ta16+OreA4WM+VpIh2fuGQGSEA4I1p3AoUq
 06idrK5eYNOlxB2F+HvEB9G0NOwXal4X6m+NA8IHu19VoR7E2qae61ppuWiErJcrzRFC
 cCnSmdBQL6ichNsn6btChvpNSNVB65d5AX1q64Co0TIzzpSKRAGLO8XYZCDU2aWs+/mg
 imAlJEWJMrTbsY1AxUKIy57o4NNPQzXknv2FejKej2rwxzrFzhE6WyiyuywE1rTrpEtx
 Xw0FoKzEUjnAlXSrzmbEExOA6wSEJNSo5RsrNodp5QJk2qEWYbm5MLxq32MA/jxlNvqA
 49zA==
X-Gm-Message-State: AGi0PuaTkkG598SH/7CtnaKJ0TJBvdmHc4NT2CfhnzpJS6TBoD3ITjVo
 fiABFqT0u6/L0SXuN7NAYO4PGA38ZvEet8Mct4k=
X-Google-Smtp-Source: APiQypL4VMesTiDq72ToI4nwLD5vOm5Ct5PCWh8/QsIaVoqZt2Pa79HPIBdIn5d5JI0xhmKj/3R4YfIJLPBbDORQQ8A=
X-Received: by 2002:a1c:e087:: with SMTP id x129mr4704771wmg.127.1588773444883; 
 Wed, 06 May 2020 06:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200504190227.18269-1-david@redhat.com>
 <20200504190227.18269-2-david@redhat.com>
In-Reply-To: <20200504190227.18269-2-david@redhat.com>
From: Pankaj Gupta <pankaj.gupta.linux@gmail.com>
Date: Wed, 6 May 2020 15:57:13 +0200
Message-ID: <CAM9Jb+hni2G69n5djfY7mqFALhk9QxGgyr1dkkGx4VTJLmhGGQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] mm/memory_hotplug: Introduce
 add_memory_device_managed()
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_065726_104070_16FB25D6 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pankaj.gupta.linux[at]gmail.com]
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
Cc: Michal Hocko <mhocko@suse.com>, Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Baoquan He <bhe@redhat.com>,
 linux-nvdimm@lists.01.org, Vishal Verma <vishal.l.verma@intel.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Wei Yang <richard.weiyang@gmail.com>,
 Linux MM <linux-mm@kvack.org>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Looks good to me.

Acked-by: Pankaj Gupta <pankaj.gupta.linux@gmail.com>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
