Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9282D17C6AB
	for <lists+kexec@lfdr.de>; Fri,  6 Mar 2020 21:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnQawn0FylVgyxsQBoq7AdvWgdRxRU50R+Cr/Hksn8w=; b=iZttPBMnI/hEWm
	M5Aj3vKpllg09q0RcEHNQPJbDZeQkQszZ1Fbon/ntHekYJhdVCcBjZxAXysBgn4goEVykQh5vcl8G
	uo6LqvH5JnXrgY3qkcWEuEM/dg3Cq9XJNcNWsajy3AMykFUkNIcbAUwgLW1SUpMa0qSt1m6hxR8fm
	I1bYrv7EUOI/vSRlLPwvmFNihtXT5UganP9JsTi8ROLW61tVMnvN17wROT28bFppVOVGmPi/Vn+35
	mjS7oBiiPOhLyVdRINV/c3chTWafIvLY4OmTMJ2yKeV5mvjjNw/0Kp+2s9+FI6KNoSC2Rvu0NBj4m
	xvtE+mruLhnVgO06ly9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJ8V-0002Bm-Uk; Fri, 06 Mar 2020 19:59:55 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJ8S-0002BI-3t
 for kexec@lists.infradead.org; Fri, 06 Mar 2020 19:59:54 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 026JxK6Q063449; Fri, 6 Mar 2020 14:59:43 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yj4q4544m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Mar 2020 14:59:43 -0500
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 026JxMj1063691;
 Fri, 6 Mar 2020 14:59:43 -0500
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2yj4q4544b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Mar 2020 14:59:43 -0500
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 026Jsn4U009647;
 Fri, 6 Mar 2020 19:59:42 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma03dal.us.ibm.com with ESMTP id 2yffk8bdka-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Mar 2020 19:59:42 +0000
Received: from b01ledav002.gho.pok.ibm.com (b01ledav002.gho.pok.ibm.com
 [9.57.199.107])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 026Jxfp553739972
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 6 Mar 2020 19:59:41 GMT
Received: from b01ledav002.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 743A5124052;
 Fri,  6 Mar 2020 19:59:41 +0000 (GMT)
Received: from b01ledav002.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 50054124053;
 Fri,  6 Mar 2020 19:59:41 +0000 (GMT)
Received: from localhost (unknown [9.41.179.160])
 by b01ledav002.gho.pok.ibm.com (Postfix) with ESMTP;
 Fri,  6 Mar 2020 19:59:41 +0000 (GMT)
From: Nathan Lynch <nathanl@linux.ibm.com>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCHv3 1/2] powerpc/of: split out new_property() for reusing
In-Reply-To: <1583311651-29310-2-git-send-email-kernelfans@gmail.com>
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-2-git-send-email-kernelfans@gmail.com>
Date: Fri, 06 Mar 2020 13:59:40 -0600
Message-ID: <87eeu5jlub.fsf@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-06_07:2020-03-06,
 2020-03-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 suspectscore=1 adultscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 spamscore=0 mlxlogscore=999
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003060121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_115952_164500_A44F74D2 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>, kexec@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, Pingfan Liu <kernelfans@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Mackerras <paulus@samba.org>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

Pingfan Liu <kernelfans@gmail.com> writes:
> Splitting out new_property() for coming reusing and moving it to
> of_helpers.c.

[...]

> +struct property *new_property(const char *name, const int length,
> +		const unsigned char *value, struct property *last)
> +{
> +	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
> +
> +	if (!new)
> +		return NULL;
> +
> +	new->name = kstrdup(name, GFP_KERNEL);
> +	if (!new->name)
> +		goto cleanup;
> +	new->value = kmalloc(length + 1, GFP_KERNEL);
> +	if (!new->value)
> +		goto cleanup;
> +
> +	memcpy(new->value, value, length);
> +	*(((char *)new->value) + length) = 0;
> +	new->length = length;
> +	new->next = last;
> +	return new;
> +
> +cleanup:
> +	kfree(new->name);
> +	kfree(new->value);
> +	kfree(new);
> +	return NULL;
> +}

This function in its current form isn't suitable for more general use:

* It appears to be tailored to string properties - note the char * value
  parameter, the length + 1 allocation and nul termination.

* Most code shouldn't need the 'last' argument. The code where this
  currently resides builds a list of properties and attaches it to a new
  node, bypassing of_add_property().

Let's look at the call site you add in your next patch:

+		big = cpu_to_be64(p->bound_addr);
+		property = new_property("bound-addr", sizeof(u64), (const unsigned char *)&big,
+			NULL);
+		of_add_property(dn, property);

So you have to use a cast, and this is going to allocate (sizeof(u64) + 1)
for the value, is that what you want?

I think you should leave that legacy pseries reconfig code undisturbed
(frankly that stuff should get deprecated and removed) and if you want a
generic helper it should look more like:

struct property *of_property_new(const char *name, size_t length,
                                 const void *value, gfp_t allocflags)

__of_prop_dup() looks like a good model/guide here.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
